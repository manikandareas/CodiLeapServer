import db from '@/core/db/index';
import { userBadges, badges, users } from '@/core/db/schema/schema';
import { eq, and } from 'drizzle-orm';
import { HTTPException } from 'hono/http-exception';
import { StatusCodes } from 'http-status-codes';
import {
  EarnedBadge,
  AvailableBadge,
  GetUserBadgesResponse,
  BadgeDetails,
  GetBadgeByIdResponse,
} from "@/core/models/badge_model";


export async function getUserBadges(userId: number): Promise<GetUserBadgesResponse> {
  // Verify user exists
  const user = await db.query.users.findFirst({
    where: eq(users.id, userId),
  });

  if (!user) {
    throw new HTTPException(StatusCodes.NOT_FOUND, {
      message: "User not found",
    });
  }

  // Retrieve earned badges
  const earnedBadgesQuery = await db.query.userBadges.findMany({
    where: (userBadge, { eq }) => eq(userBadge.userId, userId),
    with: {
      badge: true, // Include related badge data
    },
  });

  // Map earned badges to a consistent format
  const earnedBadges: EarnedBadge[] = earnedBadgesQuery.map(({ badge, earnedAt }) => ({
    id: badge.id,
    title: badge.title,
    description: badge.description,
    imageUrl: badge.imageUrl,
    earnedAt,
  }));

  // Retrieve all badges
  const allBadges = await db.query.badges.findMany();

  // Determine available badges (not yet earned)
  const availableBadges: AvailableBadge[] = allBadges
    .filter((badge) => !earnedBadges.some((earnedBadge) => earnedBadge.id === badge.id))
    .map((badge) => ({
      id: badge.id,
      title: badge.title,
      description: badge.description,
      requirements: ["Complete associated learning path"], // Placeholder requirement
    }));

  return {
    message: "User badges retrieved successfully",
    status: "OK",
    data: {
      earnedBadges,
      availableBadges,
    },
  };
}


export async function getBadgeById(userId: number, badgeId: number): Promise<GetBadgeByIdResponse> {
  // Verify user exists
  const user = await db.query.users.findFirst({
    where: eq(users.id, userId),
  });

  if (!user) {
    throw new HTTPException(StatusCodes.NOT_FOUND, {
      message: "User not found",
    });
  }

  // Retrieve badge details
  const badge = await db.query.badges.findFirst({
    where: eq(badges.id, badgeId),
  });

  if (!badge) {
    throw new HTTPException(StatusCodes.NOT_FOUND, {
      message: "Badge not found",
    });
  }

  // Check if badge is earned by the user
  const earnedBadge = await db.query.userBadges.findFirst({
    where: and(
      eq(userBadges.userId, userId),
      eq(userBadges.badgeId, badgeId)
    ),
  });

  const badgeDetails: BadgeDetails = {
    id: badge.id,
    title: badge.title,
    description: badge.description,
    imageUrl: badge.imageUrl,
    learningPathId: badge.learningPathId,
    isEarned: !!earnedBadge,
    earnedAt: earnedBadge ? earnedBadge.earnedAt : null,
    requirements: ["Complete associated learning path"], 
  };

  return {
    message: "Badge details retrieved successfully",
    status: "OK",
    data: {
      badge: badgeDetails,
    },
  };
}
