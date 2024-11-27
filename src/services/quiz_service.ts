import db from "@/core/db";
import { quizAttemptDetails, quizAttempts } from "@/core/db/schema";
import {
  DailyQuizType,
  QuizAttemptRequestType,
  QuizAttemptType,
} from "@/core/models/quiz_model";
import { HTTPException } from "hono/http-exception";
import { StatusCodes } from "http-status-codes";

export const getDailyQuiz = async (userId: number): Promise<DailyQuizType> => {
  return db.transaction(async (tx) => {
    const currentProgress = await tx.query.userCourseProgress.findFirst({
      where: (progress, { eq }) => eq(progress.userId, userId),
    });

    if (!currentProgress) {
      tx.rollback();
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: "User course progress not found",
      });
    }

    const quiz = await db.query.quizzes.findFirst({
      where: (quiz, { eq }) => eq(quiz.courseId, currentProgress.courseId),
      with: {
        questions: {
          with: { answerOptions: true },
        },
      },
    });

    if (!quiz) {
      tx.rollback();
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: "Quiz not found",
      });
    }

    const quizAttempt = await db.insert(quizAttempts).values({
      quizId: quiz.id,
      userId: userId,
      startTime: new Date().toISOString(),
      status: "started",
    });

    if (!quizAttempt) {
      tx.rollback();
      throw new HTTPException(StatusCodes.INTERNAL_SERVER_ERROR, {
        message: "Failed to create quiz attempt",
      });
    }

    return quiz;
  });
};

export const quizAttempt = async (
  userId: number,
  request: QuizAttemptRequestType
): Promise<QuizAttemptType> => {
  return db.transaction(async (tx) => {
    const quizAttempt = await tx.query.quizAttempts.findFirst({
      where: (attempt, { eq, and }) =>
        and(eq(attempt.quizId, request.quizId), eq(attempt.userId, userId)),
    });

    if (!quizAttempt) {
      tx.rollback();
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: "Quiz attempt not found",
      });
    }

    const quiz = await tx.query.quizzes.findFirst({
      where: (quiz, { eq }) => eq(quiz.id, request.quizId),
      with: {
        questions: {
          with: { answerOptions: true },
        },
      },
    });

    if (!quiz) {
      tx.rollback();
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: "Quiz not found",
      });
    }

    const quizAttemptDetail = await tx
      .insert(quizAttemptDetails)
      .values(
        request.answers.map((answer) => ({
          quizAttemptId: quizAttempt.id,
          questionId: answer.questionId,
          selectedAnswerId: answer.answerOptionId,
          isCorrect:
            quiz.questions
              .find((q) => q.id === answer.questionId)
              ?.answerOptions.find((a) => a.id === answer.answerOptionId)
              ?.isCorrect ?? false,
        }))
      )
      .returning();

    if (!quizAttemptDetail) {
      tx.rollback();
      throw new HTTPException(StatusCodes.INTERNAL_SERVER_ERROR, {
        message: "Failed to create quiz attempt details",
      });
    }

    const totalScore = quizAttemptDetail.reduce((acc, detail) => {
      const question = quiz.questions.find((q) => q.id === detail.questionId)!!;
      return acc + (detail.isCorrect ? question.pointValue : 0);
    }, 0);

    const endTime = new Date().toISOString();

    await tx.update(quizAttempts).set({
      totalScore,
      endTime,
      status: totalScore >= quiz.passingScore ? "completed" : "failed",
      updatedAt: new Date().toISOString(),
    });

    return {
      id: quizAttempt.id,
      quizId: quizAttempt.quizId,
      totalScore,
      startTime: quizAttempt.startTime as string,
      endTime,
      status: quizAttempt.status!,
      createdAt: quizAttempt.createdAt,
    };
  });
};
