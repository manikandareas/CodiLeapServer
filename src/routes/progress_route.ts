import { authMiddleware, Env } from "@/middlewares/auth_middleware";
import {
  getCurrentProgress,
  getLearningProgress,
  getQuizStreakDetails,
} from "@/services/progress_service";
import { Hono } from "hono";

export const progressRoute = new Hono<{ Variables: Env }>();

progressRoute.get("/", authMiddleware, async (c) => {
  const user = c.var.token;

  const response = await getLearningProgress(user.id);

  return c.json({
    status: "OK",
    message: "User progress details",
    data: response,
  });
});

progressRoute.get("/streak-details", authMiddleware, async (c) => {
  const user = c.var.token;

  const streakDetails = await getQuizStreakDetails(user.id);
  return c.json(
    {
      status: "OK",
      message: "Get details of user's quiz streak",
      data: streakDetails,
    },
    200
  );
});

progressRoute.get("/current", authMiddleware, async (c) => {
  const user = c.var.token;
  const response = await getCurrentProgress(user.id);
  return c.json({
    status: "OK",
    message: "User current progress",
    data: response,
  });
});

export default progressRoute;
