import { ApiResponse } from "@/core/models/api_model";
import {
  GetUserBadgesResponse,
  GetBadgeByIdResponse,
} from "@/core/models/badge_model";
import { authMiddleware, Env } from "@/middlewares/auth_middleware";
import { Hono } from "hono";
import { getReasonPhrase, StatusCodes } from "http-status-codes";
import { getUserBadges, getBadgeById } from "@/services/badge_service";

export const badgesRoute = new Hono<{ Variables: Env }>();

badgesRoute.get("/", authMiddleware, async (c) => {
  const user = c.get("token"); // Extract authenticated user from token
  const badges = await getUserBadges(user.id);

  return c.json({
    status: getReasonPhrase(StatusCodes.OK),
    message: "User badges retrieved successfully",
    data: badges,
  } satisfies ApiResponse<GetUserBadgesResponse>);
});

badgesRoute.get("/:badgeId", authMiddleware, async (c) => {
  const user = c.get("token");
  const badgeId = parseInt(c.req.param("badgeId"), 10); // Extract badgeId from route params

  if (isNaN(badgeId)) {
    return c.json(
      {
        status: getReasonPhrase(StatusCodes.BAD_REQUEST),
        message: "Invalid badge ID",
      },
      StatusCodes.BAD_REQUEST
    );
  }

  const badge = await getBadgeById(user.id, badgeId);

  return c.json({
    status: getReasonPhrase(StatusCodes.OK),
    message: "Badge details retrieved successfully",
    data: badge,
  } satisfies ApiResponse<GetBadgeByIdResponse>);
});

export default badgesRoute;
