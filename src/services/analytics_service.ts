import db from '@/core/db';
import { users, userAnalytics, userCourseProgress, quizAttempts } from '@/core/db/schema/schema';
import { eq, and } from 'drizzle-orm';
import { HTTPException } from 'hono/http-exception';
import { StatusCodes } from 'http-status-codes';
import { 
  UserAnalyticsResponse, 
  DailyStats, 
  WeeklyTrendItem, 
  LearningPatterns 
} from '@/core/models/analytics_model';


export const getUserAnalytics = async (userId: number): Promise<UserAnalyticsResponse> => {
  return db.transaction(async (tx) => {
    // Verify user exists
    const user = await tx.query.users.findFirst({
      where: eq(users.id, userId),
    });

    if (!user) {
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: 'User not found',
      });
    }

    
    const userAnalyticsRecord = await tx.query.userAnalytics.findFirst({
      where: eq(userAnalytics.userId, userId),
    });

    
    const dailyStats = await calculateDailyStats(tx, userId);

   
    const weeklyTrend = await calculateWeeklyTrend(tx, userId);

   
    const learningPatterns = determineLearningPatterns(userAnalyticsRecord);

    // Return response
    return {
      message: 'User analytics retrieved successfully',
      status: 'OK',
      data: {
        dailyStats,
        weeklyTrend,
        learningPatterns,
      },
    };
  });
};


const calculateDailyStats = async (tx: typeof db, userId: number): Promise<DailyStats> => {
 
  const userAnalyticsRecord = await tx.query.userAnalytics.findFirst({
    where: eq(userAnalytics.userId, userId),
  });

  
  const completedCourses = await tx.query.userCourseProgress.findMany({
    where: (progress, { eq, and }) =>
      and(eq(progress.userId, userId), eq(progress.completionStatus, 'completed')),
  });

  
  const quizzesTaken = await tx.query.quizAttempts.findMany({
    where: eq(quizAttempts.userId, userId),
  });

  return {
    timeSpent: userAnalyticsRecord?.averageDailyStudyTime || 0,
    lessonsCompleted: completedCourses.length,
    quizzesTaken: quizzesTaken.length,
  };
};


const calculateWeeklyTrend = async (tx: typeof db, userId: number): Promise<WeeklyTrendItem[]> => {
 
  return [
    { date: '2024-01-01', timeSpent: 120, progress: 0.5 },
    { date: '2024-01-02', timeSpent: 90, progress: 0.6 },
    { date: '2024-01-03', timeSpent: 150, progress: 0.7 },
    { date: '2024-01-04', timeSpent: 60, progress: 0.4 },
    { date: '2024-01-05', timeSpent: 180, progress: 0.8 },
    { date: '2024-01-06', timeSpent: 100, progress: 0.5 },
    { date: '2024-01-07', timeSpent: 130, progress: 0.6 },
  ];
};


const determineLearningPatterns = (
  userAnalyticsRecord?: typeof userAnalytics.$inferSelect
): LearningPatterns => {
  
  return {
    mostProductiveHours: [9, 14, 20],
    averageSessionDuration: userAnalyticsRecord?.averageDailyStudyTime || 120, 
    chronotype: userAnalyticsRecord?.averageDailyStudyTime && userAnalyticsRecord.averageDailyStudyTime > 180
      ? 'Night Owl'
      : userAnalyticsRecord?.averageDailyStudyTime && userAnalyticsRecord.averageDailyStudyTime > 90
      ? 'Moderate'
      : 'Early Bird',
  };
};
