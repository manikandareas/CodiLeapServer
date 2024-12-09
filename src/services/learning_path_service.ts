import db from "@/core/db";
import {
  SCREENING_QUIZ_ID,
  userCourseProgress,
  userLearningPathProgress,
  userScreeningResults,
} from "@/core/db/schema";
import { LearningPathResponseType } from "@/core/models/learning_path_model";
import axios, { HttpStatusCode } from "axios";
import { HTTPException } from "hono/http-exception";
import { StatusCodes } from "http-status-codes";
import { z } from "zod";

export const getAllLearningPathsWithCourses = async (): Promise<
  LearningPathResponseType[]
> => {
  const learningPaths = await db.query.learningPaths.findMany({
    with: {
      courses: {
        orderBy(fields, operators) {
          return operators.asc(fields.orderIndex);
        },
        with: {
          modules: {
            orderBy(fields, operators) {
              return operators.asc(fields.orderIndex);
            },
          },
        },
      },
    },
  });
  return learningPaths;
};

export const ScreeningModelRequestModel = z.object({
  Q1: z.number(),
  Q2: z.number(),
  Q3: z.number(),
  Q4: z.number(),
  Q5: z.number(),
});

export type ScreeningModelRequest = z.infer<typeof ScreeningModelRequestModel>;
// {
//   "predicted_label": "2",
//   "probabilities": {
//       "0": 3.543000265612136e-18,
//       "1": 0.0,
//       "2": 100.0
//   }
// }

type ScreeningModelResponse = {
  predicted_label: string;
  probabilities: {
    "0": string;
    "1": string;
    "2": string;
  };
};

export const learningPathScreening = async (
  userId: number,
  request: ScreeningModelRequest
) => {
  const modelUrl =
    "https://my-recom-app-408671456899.asia-southeast2.run.app/learning_path";

  const modelResponse = await axios
    .post<ScreeningModelResponse>(modelUrl, request)
    .then((res) => res.data);

  // const score = Number(modelResponse.probabilities[0].toString().slice(0, 5));

  const saveScreeningResult = await db
    .insert(userScreeningResults)
    .values({
      userId: userId,
      score: 0,
      recommendedPathId: Number(modelResponse.predicted_label),
      learningPathId: Number(modelResponse.predicted_label),
      quizId: SCREENING_QUIZ_ID,
    })
    .returning()
    .then((res) => res[0]);

  if (!saveScreeningResult.recommendedPathId) {
    throw new HTTPException(HttpStatusCode.InternalServerError, {
      message: "Oopss something went wrong",
    });
  }

  const learningPath = await db.query.learningPaths.findFirst({
    where: (lp, { eq }) =>
      eq(lp.id, saveScreeningResult.recommendedPathId as number),
  });

  if (!learningPath) {
    throw new HTTPException(HttpStatusCode.InternalServerError, {
      message: "Oopss something went wrong",
    });
  }

  return {
    recommendedLearningPath: learningPath,
  };
  //
  // {
  //   "Q1": 5,
  //   "Q2": 3,
  //   "Q3": 4,
  //   "Q4": 2,
  //   "Q5": 5
  // }
};

export const enrollLearningPath = async (
  userId: number,
  learningPathId: number
) => {
  // Start a transaction to ensure data consistency
  return await db.transaction(async (tx) => {
    // Find the first course in the learning path

    const isAlreadyEnrolled = await tx.query.userLearningPathProgress.findFirst(
      {
        where: (progress, { and, eq }) =>
          and(
            eq(progress.userId, userId),
            eq(progress.learningPathId, learningPathId)
          ),
      }
    );

    if (isAlreadyEnrolled) {
      throw new HTTPException(StatusCodes.CONFLICT, {
        message: "User already enrolled in this learning path",
      });
    }

    const firstCourse = await tx.query.courses.findFirst({
      where: (courses, { eq }) => eq(courses.learningPathId, learningPathId),
      orderBy: (courses, { asc }) => asc(courses.orderIndex),
    });

    if (!firstCourse) {
      throw new Error("No courses found in this learning path");
    }

    // Find the first module in the first course
    const firstModule = await tx.query.modules.findFirst({
      where: (modules, { eq }) => eq(modules.courseId, firstCourse.id),
      orderBy: (modules, { asc }) => asc(modules.orderIndex),
    });

    if (!firstModule) {
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: "No modules found in this course",
      });
    }

    // Create learning path progress
    const [learningPathProgress] = await tx
      .insert(userLearningPathProgress)
      .values({
        userId: userId,
        learningPathId: learningPathId,
        completionStatus: "in_progress",
        currentCourseId: firstCourse.id,
        startedAt: new Date().toISOString(),
      })
      .returning();

    // Create course progress for the first course
    await tx.insert(userCourseProgress).values({
      userId: userId,
      courseId: firstCourse.id,
      currentModuleId: firstModule.id,
      completionStatus: "in_progress",
      startedAt: new Date().toISOString(),
    });

    return learningPathProgress;
  });
};
