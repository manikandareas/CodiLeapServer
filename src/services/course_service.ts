import db from "@/core/db";
import { HTTPException } from "hono/http-exception";
import { StatusCodes } from "http-status-codes";
import { eq } from "drizzle-orm";
import { courses, userCourseProgress, modules } from "@/core/db/schema";
import { CourseType } from "@/core/models/course_model";

export const getCoursesWithProgress = async (
  userId: number,
  learningPathId: number
): Promise<CourseType[]> => { // Corrected return type to an array of courses
  return db.transaction(async (tx) => {
    // Ambil kursus untuk jalur pembelajaran tertentu
    const coursesPath = await tx.query.courses.findMany({
      where: (courses, { eq }) => eq(courses.learningPathId, learningPathId),
    });

    if (coursesPath.length === 0) {
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: "Learning Path not found",
      });
    }

    // Ambil jumlah modul untuk setiap Courses
    const moduleCounts = await tx.query.modules.findMany({
      where: (modules, { eq }) => eq(modules.courseId, coursesPath[0].id),
      // Assuming we need the total number of modules for the first course, if it's for all courses adjust the logic
    });

    const moduleCountMap = new Map<number, number>(); // Map to track module counts by courseId
    moduleCounts.forEach((module) => {
      const currentCount = moduleCountMap.get(module.courseId) || 0;
      moduleCountMap.set(module.courseId, currentCount + 1);
    });

    // Ambil progress pengguna untuk kursus
    const userProgress = await tx.query.userCourseProgress.findMany({
      where: (userCourseProgress, { eq }) => eq(userCourseProgress.userId, userId),
      with: { course: true },
    });

    if (userProgress.length === 0) {
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: "Failed to get user progress",
      });
    }

    // Gabungkan dan ubah data
    return coursesPath.map((course) => {
      // Find the module count for the course
      const moduleCount = moduleCountMap.get(course.id) || 0;

      // Find user progress for this course
      const progress = userProgress.find(
        (progress) => progress.courseId === course.id
      );

      const completedModules = progress
        ? progress.completionStatus?.length || 0
        : 0;

      return {
        id: course.id,
        name: course.name,
        description: course.description,
        totalModules: moduleCount,
        progress: {
          completed: completedModules,
          total: moduleCount,
          percentage: moduleCount > 0 ? (completedModules / moduleCount) * 100 : 0,
        },
      };
    });
  });
};
