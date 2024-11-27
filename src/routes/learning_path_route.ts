import { authMiddleware } from "@/middlewares/auth_middleware";
import { Hono } from "hono";

const learningPathRoute = new Hono();

learningPathRoute.get("/", authMiddleware, async (c) => {
  return c.json({
    message: "Learning path route",
  });
});

export default learningPathRoute;
