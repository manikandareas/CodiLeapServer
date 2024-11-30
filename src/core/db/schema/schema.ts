import {
  pgTable,
  foreignKey,
  serial,
  integer,
  timestamp,
  text,
  unique,
  date,
  boolean,
  numeric,
  pgEnum,
} from "drizzle-orm/pg-core";
import { sql } from "drizzle-orm";

export const completionStatus = pgEnum("completion_status", [
  "not_started",
  "in_progress",
  "completed",
]);

export const completionStatusEnum = completionStatus.enumValues;
export const learningPathLevel = pgEnum("learning_path_level", [
  "beginner",
  "intermediate",
  "advanced",
]);
export const learningPathLevelEnum = learningPathLevel.enumValues;
export const quizAttemptStatus = pgEnum("quiz_attempt_status", [
  "started",
  "completed",
  "failed",
]);
export const quizAttemptStatusEnum = quizAttemptStatus.enumValues;

export const userLearningPathProgress = pgTable(
  "user_learning_path_progress",
  {
    id: serial().primaryKey().notNull(),
    userId: integer("user_id").notNull(),
    learningPathId: integer("learning_path_id").notNull(),
    currentCourseId: integer("current_course_id"),
    completionStatus:
      completionStatus("completion_status").default("not_started"),
    startedAt: timestamp("started_at", { withTimezone: true, mode: "string" }),
    completedAt: timestamp("completed_at", {
      withTimezone: true,
      mode: "string",
    }),
  },
  (table) => {
    return {
      userLearningPathProgressUserIdFkey: foreignKey({
        columns: [table.userId],
        foreignColumns: [users.id],
        name: "user_learning_path_progress_user_id_fkey",
      }),
      userLearningPathProgressLearningPathIdFkey: foreignKey({
        columns: [table.learningPathId],
        foreignColumns: [learningPaths.id],
        name: "user_learning_path_progress_learning_path_id_fkey",
      }),
      userLearningPathProgressCurrentCourseIdFkey: foreignKey({
        columns: [table.currentCourseId],
        foreignColumns: [courses.id],
        name: "user_learning_path_progress_current_course_id_fkey",
      }),
    };
  }
);

export const courses = pgTable(
  "courses",
  {
    id: serial().primaryKey().notNull(),
    name: text().notNull(),
    learningPathId: integer("learning_path_id").notNull(),
    totalModules: integer("total_modules").default(0),
    description: text(),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    orderIndex: integer("order_index").notNull(),
  },
  (table) => {
    return {
      coursesLearningPathIdFkey: foreignKey({
        columns: [table.learningPathId],
        foreignColumns: [learningPaths.id],
        name: "courses_learning_path_id_fkey",
      }),
    };
  }
);

export const modules = pgTable(
  "modules",
  {
    id: serial().primaryKey().notNull(),
    courseId: integer("course_id").notNull(),
    name: text().notNull(),
    description: text(),
    orderIndex: integer("order_index").notNull(),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      modulesCourseIdFkey: foreignKey({
        columns: [table.courseId],
        foreignColumns: [courses.id],
        name: "modules_course_id_fkey",
      }),
    };
  }
);

export const units = pgTable(
  "units",
  {
    id: serial().primaryKey().notNull(),
    moduleId: integer("module_id").notNull(),
    name: text().notNull(),
    content: text(),
    orderIndex: integer("order_index"),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      unitsModuleIdFkey: foreignKey({
        columns: [table.moduleId],
        foreignColumns: [modules.id],
        name: "units_module_id_fkey",
      }),
    };
  }
);

export const users = pgTable(
  "users",
  {
    id: serial().primaryKey().notNull(),
    email: text().notNull(),
    hashedPassword: text("hashed_password").notNull(),
    fullName: text("full_name"),
    phoneNumber: text("phone_number"),
    address: text(),
    dateOfBirth: date("date_of_birth"),
    studyHours: integer("study_hours").default(0),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      usersEmailKey: unique("users_email_key").on(table.email),
    };
  }
);

export const userCourseProgress = pgTable(
  "user_course_progress",
  {
    id: serial().primaryKey().notNull(),
    userId: integer("user_id").notNull(),
    courseId: integer("course_id").notNull(),
    currentModuleId: integer("current_module_id"),
    completionStatus: completionStatus("completion_status")
      .default("not_started")
      .notNull(),
    startedAt: timestamp("started_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    completedAt: timestamp("completed_at", {
      withTimezone: true,
      mode: "string",
    }),
  },
  (table) => {
    return {
      userCourseProgressUserIdFkey: foreignKey({
        columns: [table.userId],
        foreignColumns: [users.id],
        name: "user_course_progress_user_id_fkey",
      }),
      userCourseProgressCourseIdFkey: foreignKey({
        columns: [table.courseId],
        foreignColumns: [courses.id],
        name: "user_course_progress_course_id_fkey",
      }),
      userCourseProgressCurrentModuleIdFkey: foreignKey({
        columns: [table.currentModuleId],
        foreignColumns: [modules.id],
        name: "user_course_progress_current_module_id_fkey",
      }),
    };
  }
);

export const learningPaths = pgTable("learning_paths", {
  id: serial().primaryKey().notNull(),
  name: text().notNull(),
  level: learningPathLevel().notNull(),
  description: text().notNull(),
  createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
    .default(sql`CURRENT_TIMESTAMP`)
    .notNull(),
  updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
    .default(sql`CURRENT_TIMESTAMP`)
    .notNull(),
  estimatedDuration: integer("estimated_duration"),
});

export const quizzes = pgTable(
  "quizzes",
  {
    id: serial().primaryKey().notNull(),
    courseId: integer("course_id").notNull(),
    title: text().notNull(),
    description: text(),
    totalQuestions: integer("total_questions").notNull(),
    passingScore: integer("passing_score").notNull(),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    timeLimit: integer("time_limit"),
  },
  (table) => {
    return {
      quizzesCourseIdFkey: foreignKey({
        columns: [table.courseId],
        foreignColumns: [courses.id],
        name: "quizzes_course_id_fkey",
      }),
    };
  }
);

export const questions = pgTable(
  "questions",
  {
    id: serial().primaryKey().notNull(),
    quizId: integer("quiz_id").notNull(),
    text: text().notNull(),
    pointValue: integer("point_value").notNull(),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      questionsQuizIdFkey: foreignKey({
        columns: [table.quizId],
        foreignColumns: [quizzes.id],
        name: "questions_quiz_id_fkey",
      }),
    };
  }
);

export const quizAttempts = pgTable(
  "quiz_attempts",
  {
    id: serial().primaryKey().notNull(),
    quizId: integer("quiz_id").notNull(),
    userId: integer("user_id").notNull(),
    totalScore: integer("total_score"),
    startTime: timestamp("start_time", { withTimezone: true, mode: "string" }),
    endTime: timestamp("end_time", { withTimezone: true, mode: "string" }),
    status: quizAttemptStatus().default("started"),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      quizAttemptsQuizIdFkey: foreignKey({
        columns: [table.quizId],
        foreignColumns: [quizzes.id],
        name: "quiz_attempts_quiz_id_fkey",
      }),
      quizAttemptsUserIdFkey: foreignKey({
        columns: [table.userId],
        foreignColumns: [users.id],
        name: "quiz_attempts_user_id_fkey",
      }),
    };
  }
);

export const answerOptions = pgTable(
  "answer_options",
  {
    id: serial().primaryKey().notNull(),
    questionId: integer("question_id").notNull(),
    text: text().notNull(),
    isCorrect: boolean("is_correct").notNull(),
  },
  (table) => {
    return {
      answerOptionsQuestionIdFkey: foreignKey({
        columns: [table.questionId],
        foreignColumns: [questions.id],
        name: "answer_options_question_id_fkey",
      }),
    };
  }
);

export const quizAttemptDetails = pgTable(
  "quiz_attempt_details",
  {
    id: serial().primaryKey().notNull(),
    quizAttemptId: integer("quiz_attempt_id").notNull(),
    questionId: integer("question_id").notNull(),
    selectedAnswerId: integer("selected_answer_id"),
    isCorrect: boolean("is_correct"),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      quizAttemptDetailsQuizAttemptIdFkey: foreignKey({
        columns: [table.quizAttemptId],
        foreignColumns: [quizAttempts.id],
        name: "quiz_attempt_details_quiz_attempt_id_fkey",
      }),
      quizAttemptDetailsQuestionIdFkey: foreignKey({
        columns: [table.questionId],
        foreignColumns: [questions.id],
        name: "quiz_attempt_details_question_id_fkey",
      }),
      quizAttemptDetailsSelectedAnswerIdFkey: foreignKey({
        columns: [table.selectedAnswerId],
        foreignColumns: [answerOptions.id],
        name: "quiz_attempt_details_selected_answer_id_fkey",
      }),
    };
  }
);

export const userScreeningResults = pgTable(
  "user_screening_results",
  {
    id: serial().primaryKey().notNull(),
    userId: integer("user_id").notNull(),
    quizId: integer("quiz_id").notNull(),
    learningPathId: integer("learning_path_id").notNull(),
    score: integer(),
    recommendedPathId: integer("recommended_path_id"),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      userScreeningResultsUserIdFkey: foreignKey({
        columns: [table.userId],
        foreignColumns: [users.id],
        name: "user_screening_results_user_id_fkey",
      }),
      userScreeningResultsQuizIdFkey: foreignKey({
        columns: [table.quizId],
        foreignColumns: [quizzes.id],
        name: "user_screening_results_quiz_id_fkey",
      }),
      userScreeningResultsLearningPathIdFkey: foreignKey({
        columns: [table.learningPathId],
        foreignColumns: [learningPaths.id],
        name: "user_screening_results_learning_path_id_fkey",
      }),
      userScreeningResultsRecommendedPathIdFkey: foreignKey({
        columns: [table.recommendedPathId],
        foreignColumns: [learningPaths.id],
        name: "user_screening_results_recommended_path_id_fkey",
      }),
    };
  }
);

export const badges = pgTable(
  "badges",
  {
    id: serial().primaryKey().notNull(),
    title: text().notNull(),
    description: text(),
    imageUrl: text("image_url"),
    learningPathId: integer("learning_path_id"),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      badgesLearningPathIdFkey: foreignKey({
        columns: [table.learningPathId],
        foreignColumns: [learningPaths.id],
        name: "badges_learning_path_id_fkey",
      }),
    };
  }
);

export const userBadges = pgTable(
  "user_badges",
  {
    id: serial().primaryKey().notNull(),
    userId: integer("user_id").notNull(),
    badgeId: integer("badge_id").notNull(),
    earnedAt: timestamp("earned_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      userBadgesUserIdFkey: foreignKey({
        columns: [table.userId],
        foreignColumns: [users.id],
        name: "user_badges_user_id_fkey",
      }),
      userBadgesBadgeIdFkey: foreignKey({
        columns: [table.badgeId],
        foreignColumns: [badges.id],
        name: "user_badges_badge_id_fkey",
      }),
    };
  }
);

export const virtualAssistantChats = pgTable(
  "virtual_assistant_chats",
  {
    id: serial().primaryKey().notNull(),
    userId: integer("user_id").notNull(),
    question: text().notNull(),
    answer: text().notNull(),
    timestamp: timestamp({ withTimezone: true, mode: "string" }).default(
      sql`CURRENT_TIMESTAMP`
    ),
  },
  (table) => {
    return {
      virtualAssistantChatsUserIdFkey: foreignKey({
        columns: [table.userId],
        foreignColumns: [users.id],
        name: "virtual_assistant_chats_user_id_fkey",
      }),
    };
  }
);

export const userDailyProgress = pgTable(
  "user_daily_progress",
  {
    id: serial().primaryKey().notNull(),
    userId: integer("user_id").notNull(),
    date: date().notNull(),
    timeSpent: integer("time_spent"),
    lessonsCompleted: integer("lessons_completed").default(0),
    quizzesTaken: integer("quizzes_taken").default(0),
    progressPercentage: numeric("progress_percentage", {
      precision: 5,
      scale: 2,
    }),
    productiveHours: integer("productive_hours").array().default([]),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
  },
  (table) => {
    return {
      userDailyProgressUserIdFkey: foreignKey({
        columns: [table.userId],
        foreignColumns: [users.id],
        name: "user_daily_progress_user_id_fkey",
      }),
      uniqueUserDate: unique("unique_user_date").on(table.userId, table.date),
    };
  }
);

export const userAnalytics = pgTable(
  "user_analytics",
  {
    id: serial().primaryKey().notNull(),
    userId: integer("user_id").notNull(),
    averageDailyStudyTime: integer("average_daily_study_time"),
    totalCoursesEnrolled: integer("total_courses_enrolled"),
    totalLearningPathsCompleted: integer("total_learning_paths_completed"),
    createdAt: timestamp("created_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    updatedAt: timestamp("updated_at", { withTimezone: true, mode: "string" })
      .default(sql`CURRENT_TIMESTAMP`)
      .notNull(),
    chronotype: text(),
    averageSessionDuration: integer("average_session_duration"),
  },
  (table) => {
    return {
      userAnalyticsUserIdFkey: foreignKey({
        columns: [table.userId],
        foreignColumns: [users.id],
        name: "user_analytics_user_id_fkey",
      }),
    };
  }
);
