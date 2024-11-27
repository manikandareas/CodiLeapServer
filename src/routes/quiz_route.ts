import { ApiResponse } from "@/core/models/api_model";
import {
  DailyQuizType,
  QuizAttemptRequest,
  QuizAttemptType,
} from "@/core/models/quiz_model";
import { authMiddleware, Env } from "@/middlewares/auth_middleware";
import { errorValidationParser } from "@/middlewares/error_validation_parser";
import { getDailyQuiz, quizAttempt } from "@/services/quiz_service";
import { zValidator } from "@hono/zod-validator";
import { Hono } from "hono";
import { getReasonPhrase, StatusCodes } from "http-status-codes";

export const quizRoute = new Hono<{ Variables: Env }>();

quizRoute.get("/", authMiddleware, async (c) => {
  const user = c.get("token");
  const quiz = await getDailyQuiz(user.id);

  return c.json({
    status: getReasonPhrase(StatusCodes.OK),
    message: "Get daily quiz successfully",
    data: quiz,
  } satisfies ApiResponse<DailyQuizType>);
});

quizRoute.post(
  "/submit",
  authMiddleware,
  zValidator("json", QuizAttemptRequest, errorValidationParser),
  async (c) => {
    const user = c.get("token");
    const data = c.req.valid("json");
    const quiz = await quizAttempt(user.id, data);

    return c.json({
      status: getReasonPhrase(StatusCodes.OK),
      message: "Quiz submitted successfully",
      data: quiz,
    } satisfies ApiResponse<QuizAttemptType>);
  }
);

export default quizRoute;
