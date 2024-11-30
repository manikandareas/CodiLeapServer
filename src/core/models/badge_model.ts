export interface EarnedBadge {
  id: number;
  title: string;
  description: string | null;
  imageUrl: string | null;
  earnedAt: string;
}

export interface AvailableBadge {
  id: number;
  title: string;
  description: string | null;
  requirements: string[];
}

export interface BadgeDetails {
  id: number;
  title: string;
  description: string | null;
  imageUrl: string | null;
  learningPathId: number | null;
  isEarned: boolean;
  earnedAt: string | null;
  requirements: string[];
}

export interface GetUserBadgesResponse {
  earnedBadges: EarnedBadge[];
  availableBadges: AvailableBadge[];
}

export interface GetBadgeByIdResponse {
  message: string;
  status: string;
  data: {
    badge: BadgeDetails;
  };
}
