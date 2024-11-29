import { authMiddleware, Env } from "@/middlewares/auth_middleware";
import {
  enrollLearningPath,
  getAllLearningPathsWithCourses,
} from "@/services/learning_path_service";
import { Hono } from "hono";
import { getReasonPhrase, StatusCodes } from "http-status-codes";

const learningPathRoute = new Hono<{ Variables: Env }>();

learningPathRoute.get("/", authMiddleware, async (c) => {
  const learningPaths = await getAllLearningPathsWithCourses();

  return c.json(
    {
      message: "Learning paths fetched successfully",
      status: getReasonPhrase(StatusCodes.OK),
      data: learningPaths,
    },
    StatusCodes.OK
  );
});

learningPathRoute.post("/:learningPathId/enroll", authMiddleware, async (c) => {
  const user = c.var.token;
  const learningPathId = c.req.param("learningPathId");

  const response = await enrollLearningPath(user.id, +learningPathId);

  return c.json(
    {
      status: getReasonPhrase(StatusCodes.CREATED),
      message: "Learning path enrolled successfully",
      data: response,
    },
    StatusCodes.CREATED
  );
});

export default learningPathRoute;
