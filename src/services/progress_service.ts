import db from "@/core/db";
import { userCourseProgress, userLearningPathProgress } from "@/core/db/schema";
import { eq, ExtractTablesWithRelations, sql } from "drizzle-orm";
import { NodePgQueryResultHKT } from "drizzle-orm/node-postgres";
import { PgTransaction } from "drizzle-orm/pg-core";
import { HTTPException } from "hono/http-exception";
import { StatusCodes } from "http-status-codes";
import * as schema from "@/core/db/schema";

// export const updateUserCourseProgress = async (
//   userId: number,
//   courseId: number,
//   request: UpdateUserCourseProgressRequestType
// ): Promise<UpdateUserCourseProgressType> => {
//   return db.transaction(async (tx) => {
//     const currentUserCourseProgress =
//       await tx.query.userCourseProgress.findFirst({
//         where: (progress, { eq, and }) =>
//           and(eq(progress.userId, userId), eq(progress.courseId, courseId)),
//         with: {
//           module: true,
//           course: {
//             columns: { learningPathId: true },
//           },
//         },
//       });

//     if (!currentUserCourseProgress) {
//       tx.rollback();
//       throw new HTTPException(StatusCodes.NOT_FOUND, {
//         message: "User course progress not found",
//       });
//     }

//     if (currentUserCourseProgress.completionStatus === "completed") {
//       tx.rollback();
//       throw new HTTPException(StatusCodes.BAD_REQUEST, {
//         message: "Course already completed",
//       });
//     }

//     // is it  still have another module?

//     const lastModule = await tx.query.modules
//       .findFirst({
//         where: (module, { eq, gt, and }) =>
//           and(
//             eq(module.courseId, courseId),
//             gt(
//               module.orderIndex,
//               currentUserCourseProgress.module?.orderIndex || 0
//             )
//           ),
//       })
//       .then((module) => module || currentUserCourseProgress.module);

//     // if lastModule is null, then it means the user has completed all the modules, and then currentModuleId should be the last module
//     // and the course should be marked as completed

//     const isCompleted = lastModule?.id === currentUserCourseProgress.module?.id;

//     if (isCompleted) {
//       const currentUserLearningPathProgress =
//         await tx.query.userLearningPathProgress.findFirst({
//           where: (progress, { and, eq }) =>
//             and(
//               eq(progress.userId, userId),
//               eq(
//                 progress.learningPathId,
//                 currentUserCourseProgress.course.learningPathId
//               )
//             ),
//           with: {
//             course: true,
//           },
//         });

//       if (!currentUserLearningPathProgress) {
//         tx.rollback();
//         throw new HTTPException(StatusCodes.NOT_FOUND, {
//           message: "User learning path progress not found",
//         });
//       }

//       const lastCourse = await tx.query.courses
//         .findFirst({
//           where: (course, { eq, gt, and }) =>
//             and(
//               eq(
//                 course.learningPathId,
//                 currentUserLearningPathProgress.learningPathId
//               ),
//               gt(
//                 course.orderIndex,
//                 currentUserLearningPathProgress.course?.orderIndex || 0
//               )
//             ),
//         })
//         .then((course) => course || currentUserLearningPathProgress.course);

//       const isLearningPathCompleted =
//         lastCourse?.id === currentUserLearningPathProgress.course?.id;

//       if (isLearningPathCompleted) {
//         const updatedUserLearningPathProgress = await tx
//           .update(userLearningPathProgress)
//           .set({
//             currentCourseId: lastCourse?.id,
//             completionStatus: "completed",
//             completedAt: new Date().toISOString(),
//           })
//           .returning();

//         if (!updatedUserLearningPathProgress) {
//           throw new HTTPException(StatusCodes.INTERNAL_SERVER_ERROR, {
//             message: "Failed to update user learning path progress",
//           });
//         }
//       }
//     }
//     const updatedUserCourseProgress = await tx
//       .update(userCourseProgress)
//       .set({
//         currentModuleId: lastModule?.id,
//         completionStatus: isCompleted ? "completed" : "in_progress",
//         completedAt: isCompleted ? new Date().toISOString() : null,
//       })
//       .returning();

//     if (!updatedUserCourseProgress) {
//       throw new HTTPException(StatusCodes.INTERNAL_SERVER_ERROR, {
//         message: "Failed to update user course progress",
//       });
//     }

//     return updatedUserCourseProgress[0];
//   });
// };

// Complete Module
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

type LearningProgressResponse = {
  data: {
    overallProgress: {
      completedCourse: number;
      totalCourse: number;
      completedModule: number;
      totalModule: number;
    };
    currentStreak: number;
    longestStreak: number;
    averageDailyTime: number;
    learningPathProgress: Array<{
      pathId: number;
      pathName: string;
      progress: number;
    }>;
  };
};

const calculateQuizStreak = async (userId: number) => {
  const streakQuery = sql`
      WITH daily_quiz_attempts AS (
        SELECT
          date_trunc('day', start_time) AS quiz_day,
          COUNT(*) AS quiz_count
        FROM quiz_attempts
        WHERE
          user_id = ${userId}
          AND status = 'completed'
        GROUP BY quiz_day
        ORDER BY quiz_day DESC
      ),
      consecutive_days AS (
        SELECT
          quiz_day,
          LAG(quiz_day) OVER (ORDER BY quiz_day DESC) AS prev_day,
          ROW_NUMBER() OVER (ORDER BY quiz_day DESC) AS current_streak
        FROM daily_quiz_attempts
      ),
      streak_calculation AS (
        SELECT
          quiz_day,
          current_streak,
          CASE
            WHEN
              (quiz_day = CURRENT_DATE AND prev_day = CURRENT_DATE - INTERVAL '1 day')
              OR
              (prev_day = quiz_day - INTERVAL '1 day')
            THEN current_streak
            ELSE 1
          END AS validated_streak
        FROM consecutive_days
      ),
      longest_streak AS (
        SELECT
          MAX(validated_streak) AS max_streak
        FROM streak_calculation
      )
      SELECT
        COALESCE((
          SELECT current_streak
          FROM streak_calculation
          WHERE quiz_day = CURRENT_DATE
          LIMIT 1
        ), 0) AS current_streak,
        COALESCE((SELECT max_streak FROM longest_streak), 0) AS longest_streak
    `;

  const streakResult = await db.execute(streakQuery);
  return streakResult.rows[0] as {
    current_streak: number;
    longest_streak: number;
  };
};

// Comprehensive learning progress query
export const getLearningProgress = async (
  userId: number
): Promise<LearningProgressResponse> => {
  // Overall Progress Calculation
  const overallProgressQuery = sql`
      WITH
      total_courses AS (
        SELECT COUNT(*) AS total_course_count
        FROM courses
      ),
      total_modules AS (
        SELECT COUNT(*) AS total_module_count
        FROM modules
      ),
      completed_courses AS (
        SELECT COUNT(*) AS completed_course_count
        FROM user_course_progress
        WHERE user_id = ${userId} AND completion_status = 'completed'
      ),
      completed_modules AS (
        SELECT COUNT(*) AS completed_module_count
        FROM user_course_progress ucp
        JOIN modules m ON ucp.current_module_id = m.id
        WHERE ucp.user_id = ${userId} AND ucp.completion_status = 'completed'
      )
      SELECT
        total_course_count,
        completed_course_count,
        total_module_count,
        completed_module_count
      FROM total_courses, total_modules, completed_courses, completed_modules
    `;

  // Learning Path Progress
  const learningPathProgressQuery = sql`
      WITH path_progress AS (
        SELECT
          lp.id AS path_id,
          lp.name AS path_name,
          COUNT(DISTINCT c.id) AS total_courses,
          COUNT(DISTINCT
            CASE WHEN ucp.completion_status = 'completed'
                 THEN c.id
            END
          ) AS completed_courses
        FROM learning_paths lp
        JOIN courses c ON c.learning_path_id = lp.id
        LEFT JOIN user_course_progress ucp ON ucp.course_id = c.id AND ucp.user_id = ${userId}
        GROUP BY lp.id, lp.name
      )
      SELECT
        path_id,
        path_name,
        ROUND(
          COALESCE(completed_courses * 100.0 / NULLIF(total_courses, 0), 0),
          2
        ) AS progress
      FROM path_progress
    `;

  // Average Daily Study Time
  const userAnalyticsResult = await db.query.userAnalytics.findFirst({
    where: (userAnalytics, { eq }) => eq(userAnalytics.userId, userId),
  });

  // Execute queries
  const [overallProgressResult, learningPathProgressResult, streakResult] =
    await Promise.all([
      db.execute(overallProgressQuery),
      db.execute(learningPathProgressQuery),
      calculateQuizStreak(userId),
    ]);

  // Prepare response
  return {
    data: {
      overallProgress: {
        completedCourse: Number(
          overallProgressResult.rows[0].completed_course_count
        ),
        totalCourse: Number(overallProgressResult.rows[0].total_course_count),
        completedModule: Number(
          overallProgressResult.rows[0].completed_module_count
        ),
        totalModule: Number(overallProgressResult.rows[0].total_module_count),
      },
      currentStreak: streakResult.current_streak || 0,
      longestStreak: streakResult.longest_streak || 0,
      averageDailyTime: userAnalyticsResult?.averageDailyStudyTime || 0,
      learningPathProgress: learningPathProgressResult.rows.map((row) => ({
        pathId: row.path_id,
        pathName: row.path_name,
        progress: Number(row.progress),
      })),
    },
  };
};

// Additional utility function to get detailed streak information
export const getQuizStreakDetails = async (userId: number) => {
  const streakDetailsQuery = sql`
      WITH daily_quiz_attempts AS (
        SELECT
          date_trunc('day', start_time) AS quiz_day,
          COUNT(*) AS quiz_count,
          MAX(start_time) AS latest_attempt
        FROM quiz_attempts
        WHERE
          user_id = ${userId}
          AND status = 'completed'
        GROUP BY quiz_day
        ORDER BY quiz_day DESC
      ),
      consecutive_days AS (
        SELECT
          quiz_day,
          quiz_count,
          latest_attempt,
          LAG(quiz_day) OVER (ORDER BY quiz_day DESC) AS prev_day,
          ROW_NUMBER() OVER (ORDER BY quiz_day DESC) AS current_streak
        FROM daily_quiz_attempts
      ),
      streak_details AS (
        SELECT
          quiz_day,
          quiz_count,
          latest_attempt,
          current_streak,
          CASE
            WHEN
              (quiz_day = CURRENT_DATE AND prev_day = CURRENT_DATE - INTERVAL '1 day')
              OR
              (prev_day = quiz_day - INTERVAL '1 day')
            THEN current_streak
            ELSE 1
          END AS validated_streak
        FROM consecutive_days
      )
      SELECT
        quiz_day,
        quiz_count,
        latest_attempt,
        validated_streak
      FROM streak_details
      ORDER BY quiz_day DESC
      LIMIT 7  -- Last 7 days of quiz attempts
    `;

  const streakDetailsResult = await db.execute(streakDetailsQuery);
  return streakDetailsResult.rows.map((row) => ({
    date: row.quiz_day,
    quizCount: Number(row.quiz_count),
    latestAttempt: row.latest_attempt,
    streakValue: Number(row.validated_streak),
  }));
};
