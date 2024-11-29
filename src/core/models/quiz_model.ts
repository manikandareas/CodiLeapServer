import { z } from "zod";
import { quizAttemptStatusEnum } from "../db/schema";

export const DailyQuizAnswerOptionResponse = z.object({
  id: z.number(),
  questionId: z.number(),
  text: z.string(),
  isCorrect: z.boolean(),
});

export type DailyQuizAnswerOptionType = z.infer<
  typeof DailyQuizAnswerOptionResponse
>;

export const DailyQuizQuestionResponse = z.object({
  id: z.number(),
  quizId: z.number(),
  text: z.string(),
  pointValue: z.number(),
  createdAt: z.string(),
  updatedAt: z.string(),
  answerOptions: z.array(DailyQuizAnswerOptionResponse),
});

export type DailyQuizQuestionType = z.infer<typeof DailyQuizQuestionResponse>;

export const DailyQuizResponse = z.object({
  id: z.number(),
  title: z.string(),
  description: z.string().nullable(),
  totalQuestions: z.number(),
  passingScore: z.number(),
  timeLimit: z.number().nullable(),
  createdAt: z.string(),
  updatedAt: z.string(),
  courseId: z.number(),
  questions: z.array(DailyQuizQuestionResponse),
});

export type DailyQuizType = z.infer<typeof DailyQuizResponse>;

export const SubmitQuizRequest = z.object({
  quizId: z.number(),
  answers: z.array(
    z.object({
      questionId: z.number(),
      answerOptionId: z.number(),
    })
  ),
});

export type SubmitQuizRequestType = z.infer<typeof SubmitQuizRequest>;

export const SubmitQuizResponse = z.object({
  id: z.number(),
  quizId: z.number(),
  totalScore: z.number(),
  startTime: z.string(),
  endTime: z.string(),
  status: z.enum(quizAttemptStatusEnum),
  createdAt: z.string(),
});

export type SubmitQuizType = z.infer<typeof SubmitQuizResponse>;
