import db from "@/core/db";
import {
  quizAttempts,
  userAnalytics,
  userCourseProgress,
  userDailyProgress,
} from "@/core/db/schema/schema";
import { and, desc, eq, gte, lte, sql } from "drizzle-orm";

interface DailyStats {
  timeSpent: number;
  lessonsCompleted: number;
  quizzesTaken: number;
}

interface WeeklyTrendItem {
  date: string;
  timeSpent: number;
  progress: number;
}

interface LearningPatterns {
  mostProductiveHours: number[];
  averageSessionDuration: number;
  chronotype: string | null;
}

interface UserAnalyticsResult {
  dailyStats: DailyStats;
  weeklyTrend: WeeklyTrendItem[];
  learningPatterns: LearningPatterns;
}

export async function getUserAnalytics(
  userId: number
): Promise<UserAnalyticsResult> {
  // Get today's and last 7 days' dates
  const today = new Date();
  const sevenDaysAgo = new Date(today);
  sevenDaysAgo.setDate(today.getDate() - 6);

  // Fetch daily progress for the past 7 days
  const weeklyProgressData = await db
    .select({
      date: userDailyProgress.date,
      timeSpent: userDailyProgress.timeSpent,
      lessonsCompleted: userDailyProgress.lessonsCompleted,
      quizzesTaken: userDailyProgress.quizzesTaken,
      progressPercentage: userDailyProgress.progressPercentage,
      productiveHours: userDailyProgress.productiveHours,
    })
    .from(userDailyProgress)
    .where(
      and(
        eq(userDailyProgress.userId, userId),
        gte(userDailyProgress.date, sevenDaysAgo.toISOString().split("T")[0]),
        lte(userDailyProgress.date, today.toISOString().split("T")[0])
      )
    )
    .orderBy(userDailyProgress.date);

  // Get today's daily stats
  const todayStats = weeklyProgressData.find(
    (item) => item.date === today.toISOString().split("T")[0]
  ) || {
    timeSpent: 0,
    lessonsCompleted: 0,
    quizzesTaken: 0,
  };

  // Aggregate most productive hours across the week
  const mostProductiveHours = weeklyProgressData.reduce((acc, day) => {
    if (day.productiveHours && day.productiveHours.length) {
      return [...acc, ...day.productiveHours];
    }
    return acc;
  }, [] as number[]);

  // Fetch user analytics for learning patterns
  const userAnalyticsData = await db
    .select({
      averageSessionDuration: userAnalytics.averageSessionDuration,
      chronotype: userAnalytics.chronotype,
    })
    .from(userAnalytics)
    .where(eq(userAnalytics.userId, userId))
    .limit(1);

  return {
    dailyStats: {
      timeSpent: todayStats.timeSpent || 0,
      lessonsCompleted: todayStats.lessonsCompleted || 0,
      quizzesTaken: todayStats.quizzesTaken || 0,
    },
    weeklyTrend: weeklyProgressData.map((item) => ({
      date: item.date,
      timeSpent: item.timeSpent || 0,
      progress: item.progressPercentage ? Number(item.progressPercentage) : 0,
    })),
    learningPatterns: {
      mostProductiveHours: mostProductiveHours.length
        ? // @ts-ignore
          [...new Set(mostProductiveHours)].sort((a, b) => a - b)
        : [],
      averageSessionDuration: userAnalyticsData[0]?.averageSessionDuration || 0,
      chronotype: userAnalyticsData[0]?.chronotype || null,
    },
  };
}

// export const getUserAnalytics = async (
//   userId: number
// ): Promise<UserAnalyticsResponse> => {
//   return db.transaction(async (tx) => {
//     // Verify user exists
//     const user = await tx.query.users.findFirst({
//       where: eq(users.id, userId),
//     });

//     if (!user) {
//       throw new HTTPException(StatusCodes.NOT_FOUND, {
//         message: "User not found",
//       });
//     }

//     const userAnalyticsRecord = await tx.query.userAnalytics.findFirst({
//       where: eq(userAnalytics.userId, userId),
//     });

//     const dailyStats = await calculateDailyStats(
//       tx as unknown as typeof db,
//       userId
//     );

//     const weeklyTrend = await calculateWeeklyTrend(
//       tx as unknown as typeof db,
//       userId
//     );

//     const learningPatterns = determineLearningPatterns(userAnalyticsRecord);

//     // Return response
//     return {
//       dailyStats,
//       weeklyTrend,
//       learningPatterns,
//     };
//   });
// };

// const calculateDailyStats = async (
//   tx: typeof db,
//   userId: number
// ): Promise<DailyStats> => {
//   const userAnalyticsRecord = await tx.query.userAnalytics.findFirst({
//     where: eq(userAnalytics.userId, userId),
//   });

//   const completedCourses = await tx.query.userCourseProgress.findMany({
//     where: (progress, { eq, and }) =>
//       and(
//         eq(progress.userId, userId),
//         eq(progress.completionStatus, "completed")
//       ),
//   });

//   const quizzesTaken = await tx.query.quizAttempts.findMany({
//     where: eq(quizAttempts.userId, userId),
//   });

//   return {
//     timeSpent: userAnalyticsRecord?.averageDailyStudyTime || 0,
//     lessonsCompleted: completedCourses.length,
//     quizzesTaken: quizzesTaken.length,
//   };
// };

// const calculateWeeklyTrend = async (
//   tx: typeof db,
//   userId: number
// ): Promise<WeeklyTrendItem[]> => {
//   return [
//     { date: "2024-01-01", timeSpent: 120, progress: 0.5 },
//     { date: "2024-01-02", timeSpent: 90, progress: 0.6 },
//     { date: "2024-01-03", timeSpent: 150, progress: 0.7 },
//     { date: "2024-01-04", timeSpent: 60, progress: 0.4 },
//     { date: "2024-01-05", timeSpent: 180, progress: 0.8 },
//     { date: "2024-01-06", timeSpent: 100, progress: 0.5 },
//     { date: "2024-01-07", timeSpent: 130, progress: 0.6 },
//   ];
// };

// const determineLearningPatterns = (
//   userAnalyticsRecord?: typeof userAnalytics.$inferSelect
// ): LearningPatterns => {
//   return {
//     mostProductiveHours: [9, 14, 20],
//     averageSessionDuration: userAnalyticsRecord?.averageDailyStudyTime || 120,
//     chronotype:
//       userAnalyticsRecord?.averageDailyStudyTime &&
//       userAnalyticsRecord.averageDailyStudyTime > 180
//         ? "Night Owl"
//         : userAnalyticsRecord?.averageDailyStudyTime &&
//           userAnalyticsRecord.averageDailyStudyTime > 90
//         ? "Moderate"
//         : "Early Bird",
//   };
// };
