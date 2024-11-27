import { relations } from "drizzle-orm/relations";
import {
  users,
  userLearningPathProgress,
  learningPaths,
  courses,
  modules,
  units,
  userCourseProgress,
  quizzes,
  questions,
  quizAttempts,
  answerOptions,
  quizAttemptDetails,
  userScreeningResults,
  badges,
  userBadges,
  virtualAssistantChats,
  userAnalytics,
} from "./schema";

export const userLearningPathProgressRelations = relations(
  userLearningPathProgress,
  ({ one }) => ({
    user: one(users, {
      fields: [userLearningPathProgress.userId],
      references: [users.id],
    }),
    learningPath: one(learningPaths, {
      fields: [userLearningPathProgress.learningPathId],
      references: [learningPaths.id],
    }),
    course: one(courses, {
      fields: [userLearningPathProgress.currentCourseId],
      references: [courses.id],
    }),
  })
);

export const usersRelations = relations(users, ({ many }) => ({
  userLearningPathProgresses: many(userLearningPathProgress),
  userCourseProgresses: many(userCourseProgress),
  quizAttempts: many(quizAttempts),
  userScreeningResults: many(userScreeningResults),
  userBadges: many(userBadges),
  virtualAssistantChats: many(virtualAssistantChats),
  userAnalytics: many(userAnalytics),
}));

export const learningPathsRelations = relations(learningPaths, ({ many }) => ({
  userLearningPathProgresses: many(userLearningPathProgress),
  courses: many(courses),
  userScreeningResults_learningPathId: many(userScreeningResults, {
    relationName: "userScreeningResults_learningPathId_learningPaths_id",
  }),
  userScreeningResults_recommendedPathId: many(userScreeningResults, {
    relationName: "userScreeningResults_recommendedPathId_learningPaths_id",
  }),
  badges: many(badges),
}));

export const coursesRelations = relations(courses, ({ one, many }) => ({
  userLearningPathProgresses: many(userLearningPathProgress),
  learningPath: one(learningPaths, {
    fields: [courses.learningPathId],
    references: [learningPaths.id],
  }),
  modules: many(modules),
  userCourseProgresses: many(userCourseProgress),
  quizzes: many(quizzes),
}));

export const modulesRelations = relations(modules, ({ one, many }) => ({
  course: one(courses, {
    fields: [modules.courseId],
    references: [courses.id],
  }),
  units: many(units),
  userCourseProgresses: many(userCourseProgress),
}));

export const unitsRelations = relations(units, ({ one }) => ({
  module: one(modules, {
    fields: [units.moduleId],
    references: [modules.id],
  }),
}));

export const userCourseProgressRelations = relations(
  userCourseProgress,
  ({ one }) => ({
    user: one(users, {
      fields: [userCourseProgress.userId],
      references: [users.id],
    }),
    course: one(courses, {
      fields: [userCourseProgress.courseId],
      references: [courses.id],
    }),
    module: one(modules, {
      fields: [userCourseProgress.currentModuleId],
      references: [modules.id],
    }),
  })
);

export const quizzesRelations = relations(quizzes, ({ one, many }) => ({
  course: one(courses, {
    fields: [quizzes.courseId],
    references: [courses.id],
  }),
  questions: many(questions),
  quizAttempts: many(quizAttempts),
  userScreeningResults: many(userScreeningResults),
}));

export const questionsRelations = relations(questions, ({ one, many }) => ({
  quiz: one(quizzes, {
    fields: [questions.quizId],
    references: [quizzes.id],
  }),
  answerOptions: many(answerOptions),
  quizAttemptDetails: many(quizAttemptDetails),
}));

export const quizAttemptsRelations = relations(
  quizAttempts,
  ({ one, many }) => ({
    quiz: one(quizzes, {
      fields: [quizAttempts.quizId],
      references: [quizzes.id],
    }),
    user: one(users, {
      fields: [quizAttempts.userId],
      references: [users.id],
    }),
    quizAttemptDetails: many(quizAttemptDetails),
  })
);

export const answerOptionsRelations = relations(
  answerOptions,
  ({ one, many }) => ({
    question: one(questions, {
      fields: [answerOptions.questionId],
      references: [questions.id],
    }),
    quizAttemptDetails: many(quizAttemptDetails),
  })
);

export const quizAttemptDetailsRelations = relations(
  quizAttemptDetails,
  ({ one }) => ({
    quizAttempt: one(quizAttempts, {
      fields: [quizAttemptDetails.quizAttemptId],
      references: [quizAttempts.id],
    }),
    question: one(questions, {
      fields: [quizAttemptDetails.questionId],
      references: [questions.id],
    }),
    answerOption: one(answerOptions, {
      fields: [quizAttemptDetails.selectedAnswerId],
      references: [answerOptions.id],
    }),
  })
);

export const userScreeningResultsRelations = relations(
  userScreeningResults,
  ({ one }) => ({
    user: one(users, {
      fields: [userScreeningResults.userId],
      references: [users.id],
    }),
    quiz: one(quizzes, {
      fields: [userScreeningResults.quizId],
      references: [quizzes.id],
    }),
    learningPath_learningPathId: one(learningPaths, {
      fields: [userScreeningResults.learningPathId],
      references: [learningPaths.id],
      relationName: "userScreeningResults_learningPathId_learningPaths_id",
    }),
    learningPath_recommendedPathId: one(learningPaths, {
      fields: [userScreeningResults.recommendedPathId],
      references: [learningPaths.id],
      relationName: "userScreeningResults_recommendedPathId_learningPaths_id",
    }),
  })
);

export const badgesRelations = relations(badges, ({ one, many }) => ({
  learningPath: one(learningPaths, {
    fields: [badges.learningPathId],
    references: [learningPaths.id],
  }),
  userBadges: many(userBadges),
}));

export const userBadgesRelations = relations(userBadges, ({ one }) => ({
  user: one(users, {
    fields: [userBadges.userId],
    references: [users.id],
  }),
  badge: one(badges, {
    fields: [userBadges.badgeId],
    references: [badges.id],
  }),
}));

export const virtualAssistantChatsRelations = relations(
  virtualAssistantChats,
  ({ one }) => ({
    user: one(users, {
      fields: [virtualAssistantChats.userId],
      references: [users.id],
    }),
  })
);

export const userAnalyticsRelations = relations(userAnalytics, ({ one }) => ({
  user: one(users, {
    fields: [userAnalytics.userId],
    references: [users.id],
  }),
}));
