import db from "@/core/db";
import { sql } from "drizzle-orm";

// Complete Module

type LearningProgressResponse = {
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
      pathId: row.path_id as number,
      pathName: row.path_name as string,
      progress: Number(row.progress),
    })),
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
