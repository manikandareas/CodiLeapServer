import db from "@/core/db";
import { userCourseProgress, userLearningPathProgress } from "@/core/db/schema";
import {
  CoursesResponseType,
  ModulesResponseType,
} from "@/core/models/courses_model";
import { eq } from "drizzle-orm";
import { HTTPException } from "hono/http-exception";
import { StatusCodes } from "http-status-codes";

export const getCoursesByLearningPathID = async (
  learningPathId: number
): Promise<CoursesResponseType[]> => {
  const isLearningPathIdValid = await db.query.learningPaths
    .findFirst({
      where: (learningPath, { eq }) => eq(learningPath.id, learningPathId),
      columns: {
        id: true,
      },
    })
    .then((res) => (res ? true : false));

  if (!isLearningPathIdValid) {
    throw new HTTPException(StatusCodes.NOT_FOUND, {
      message: "Learning path not found",
    });
  }

  const courses = await db.query.courses.findMany({
    where: (course, { eq }) => eq(course.learningPathId, learningPathId),
  });
  return courses;
};

export const getModulesByCourseId = async (
  courseId: number
): Promise<ModulesResponseType[]> => {
  const isCourseIdValid = await db.query.courses.findFirst({
    where: (course, { eq }) => eq(course.id, courseId),
    columns: {
      id: true,
    },
  });

  if (!isCourseIdValid) {
    throw new HTTPException(StatusCodes.NOT_FOUND, {
      message: "Course not found",
    });
  }

  const modules = await db.query.modules.findMany({
    where: (module, { eq }) => eq(module.courseId, courseId),
    with: {
      units: true,
    },
  });

  return modules;
};

export const completeModule = async (userId: number, courseId: number) => {
  return await db.transaction(async (tx) => {
    // Get current course progress
    const currentCourseProgress = await tx.query.userCourseProgress.findFirst({
      where: (ucp, { eq, and }) =>
        and(eq(ucp.courseId, courseId), eq(ucp.userId, userId)),
      with: {
        module: true,
      },
    });

    if (!currentCourseProgress) {
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: "User course progress not found",
      });
    }

    if (currentCourseProgress.completionStatus === "completed") {
      throw new HTTPException(StatusCodes.BAD_REQUEST, {
        message: "Course already completed",
      });
    }

    // Find next module in the course
    const nextModule = await tx.query.modules.findFirst({
      where: (modules, { eq, and, gt }) =>
        and(
          eq(modules.courseId, currentCourseProgress.courseId),
          gt(modules.orderIndex, currentCourseProgress.module?.orderIndex || 0)
        ),
      orderBy: (modules, { asc }) => asc(modules.orderIndex),
    });

    if (nextModule) {
      // Update current module to next module
      await tx
        .update(userCourseProgress)
        .set({ currentModuleId: nextModule.id })
        .where(eq(userCourseProgress.id, currentCourseProgress.id));
    } else {
      // No more modules, mark course as completed
      await tx
        .update(userCourseProgress)
        .set({
          currentModuleId: null,
          completionStatus: "completed",
          completedAt: new Date().toISOString(),
        })
        .where(eq(userCourseProgress.id, currentCourseProgress.id));

      // Check if this was the last course in the learning path
      const currentLearningPathProgress =
        await tx.query.userLearningPathProgress.findFirst({
          where: (ulpp, { eq, and }) =>
            and(
              eq(ulpp.userId, userId),
              eq(ulpp.currentCourseId, currentCourseProgress.courseId)
            ),
          with: {
            course: true,
          },
        });

      if (currentLearningPathProgress) {
        // Find next course in the learning path
        const nextCourse = await tx.query.courses.findFirst({
          where: (courses, { eq, and, gt }) =>
            and(
              eq(
                courses.learningPathId,
                currentLearningPathProgress.learningPathId
              ),
              gt(
                courses.orderIndex,
                currentLearningPathProgress.course?.orderIndex || 0
              )
            ),
          orderBy: (courses, { asc }) => asc(courses.orderIndex),
        });

        if (nextCourse) {
          // Find first module of the next course
          const firstModuleOfNextCourse = await tx.query.modules.findFirst({
            where: (modules, { eq }) => eq(modules.courseId, nextCourse.id),
            orderBy: (modules, { asc }) => asc(modules.orderIndex),
          });

          // Update learning path progress and create new course progress
          await tx
            .update(userLearningPathProgress)
            .set({ currentCourseId: nextCourse.id })
            .where(
              eq(userLearningPathProgress.id, currentLearningPathProgress.id)
            );

          await tx.insert(userCourseProgress).values({
            userId: userId,
            courseId: nextCourse.id,
            currentModuleId: firstModuleOfNextCourse?.id || null,
            completionStatus: "not_started",
            startedAt: new Date().toISOString(),
          });
        } else {
          // Last course completed, mark learning path as completed
          await tx
            .update(userLearningPathProgress)
            .set({
              currentCourseId: null,
              completionStatus: "completed",
              completedAt: new Date().toISOString(),
            })
            .where(
              eq(userLearningPathProgress.id, currentLearningPathProgress.id)
            );
        }
      }
    }
  });
};
