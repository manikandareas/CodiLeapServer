import { ApiResponse } from "@/core/models/api_model";
import {
  GetUserBadgesResponse,
  GetBadgeByIdResponse,
} from "@/core/models/badge_model";
import { authMiddleware, Env } from "@/middlewares/auth_middleware";  // Authentication middleware
import { Hono } from "hono";
import { getReasonPhrase, StatusCodes } from "http-status-codes";
import { getUserBadges, getBadgeById } from "@/services/badge_service";  // Badge services for fetching badges

export const badgesRoute = new Hono<{ Variables: Env }>();

// Route to get all badges of the authenticated user
badgesRoute.get("/", authMiddleware, async (c) => {
  const user = c.get("token"); // Extract the authenticated user from the token
  try {
    // Fetch all badges for the user
    const badges = await getUserBadges(user.id);

    // Return response with badges data
    return c.json({
      status: getReasonPhrase(StatusCodes.OK),
      message: "User badges retrieved successfully",
      data: badges,
    } satisfies ApiResponse<GetUserBadgesResponse>);
  } catch (error) {
    return c.json(
      {
        status: getReasonPhrase(StatusCodes.INTERNAL_SERVER_ERROR),
        message: "Failed to retrieve user badges",
      },
      StatusCodes.INTERNAL_SERVER_ERROR
    );
  }
});

// Route to get details of a specific badge by its ID
badgesRoute.get("/:badgeId", authMiddleware, async (c) => {
  const user = c.get("token");  // Extract the authenticated user from the token
  const badgeId = parseInt(c.req.param("badgeId"), 10);  // Extract badgeId from the route parameters

  // Validate badgeId format
  if (isNaN(badgeId)) {
    return c.json(
      {
        status: getReasonPhrase(StatusCodes.BAD_REQUEST),
        message: "Invalid badge ID",
      },
      StatusCodes.BAD_REQUEST
    );
  }

  try {
    // Fetch the badge details for the user
    const badge = await getBadgeById(user.id, badgeId);

    if (!badge) {
      // If the badge doesn't exist, return a 404 Not Found response
      return c.json(
        {
          status: getReasonPhrase(StatusCodes.NOT_FOUND),
          message: "Badge not found",
        },
        StatusCodes.NOT_FOUND
      );
    }

    // Return response with badge details
    return c.json({
      status: getReasonPhrase(StatusCodes.OK),
      message: "Badge details retrieved successfully",
      data: badge,
    } satisfies ApiResponse<GetBadgeByIdResponse>);
  } catch (error) {
    // Handle errors, e.g., database issues or service failures
    return c.json(
      {
        status: getReasonPhrase(StatusCodes.INTERNAL_SERVER_ERROR),
        message: "Failed to retrieve badge details",
      },
      StatusCodes.INTERNAL_SERVER_ERROR
    );
  }
});

export default badgesRoute;
