import { Hono } from "hono";
import { getReasonPhrase, StatusCodes } from "http-status-codes";
import { ApiResponse } from "@/core/models/api_model";
import { CourseType } from "@/core/models/course_model";
import { authMiddleware, Env } from "@/middlewares/auth_middleware";
import { getCoursesWithProgress } from "@/services/course_service";  // Service to fetch courses with progress

export const courseRoute = new Hono<{ Variables: Env }>();

// Define the route for GET /courses/:learningPathId/:userId
courseRoute.get("/:learningPathId/:userId", authMiddleware, async (c) => {
  const userId = parseInt(c.req.param("userId"), 10);
  const learningPathId = parseInt(c.req.param("learningPathId"), 10);

  // Validate if the userId and learningPathId are valid integers
  if (isNaN(userId) || isNaN(learningPathId)) {
    return c.json(
      {
        status: getReasonPhrase(StatusCodes.BAD_REQUEST),
        message: "Invalid parameters provided.",
      },
      StatusCodes.BAD_REQUEST
    );
  }

  try {
    // Fetch courses and progress for the user and learning path
    const coursesWithProgress: CourseType[] = await getCoursesWithProgress(userId, learningPathId);

    // Return the response with courses and progress data
    return c.json({
      status: getReasonPhrase(StatusCodes.OK),
      message: "Courses fetched successfully",
      data: coursesWithProgress,
    } satisfies ApiResponse<CourseType[]>);
  } catch (error) {
    // Handle any errors during the fetching process
    return c.json(
      {
        status: getReasonPhrase(StatusCodes.INTERNAL_SERVER_ERROR),
        message: error.message || "An error occurred while fetching courses.",
      },
      StatusCodes.INTERNAL_SERVER_ERROR
    );
  }
});

export default courseRoute;
