import db from "@/core/db";
import { userCourseProgress, userLearningPathProgress } from "@/core/db/schema";
import { LearningPathResponseType } from "@/core/models/learning_path_model";
import { HTTPException } from "hono/http-exception";
import { StatusCodes } from "http-status-codes";

export const getAllLearningPaths = async (): Promise<
  LearningPathResponseType[]
> => {
  const learningPaths = await db.query.learningPaths.findMany({
    with: {
      courses: {
        columns: { id: true },
      },
    },
  });

  return learningPaths.map((it) => ({
    ...it,
    totalCourses: it.courses.length,
  }));
};

export const learningPathScreening = async (userId: number) => {};

export const enrollLearningPath = async (
  userId: number,
  learningPathId: number
) => {
  // Start a transaction to ensure data consistency
  return await db.transaction(async (tx) => {
    // Find the first course in the learning path
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
      completionStatus: "not_started",
      startedAt: new Date().toISOString(),
    });

    return learningPathProgress;
  });
};
