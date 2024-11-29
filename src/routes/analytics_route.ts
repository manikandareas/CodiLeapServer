import { Hono } from 'hono';
import { authMiddleware } from '@/middlewares/auth_middleware';
import { getReasonPhrase, StatusCodes } from 'http-status-codes';
import { ApiResponse } from '@/core/models/api_model';
import { getUserAnalytics } from '@/services/analytics_service';
import { UserAnalyticsResponse } from '@/core/models/analytics_model';
export const analyticsRoute = new Hono();

analyticsRoute.get('/:userId', authMiddleware, async (c) => {
  const userId = parseInt(c.req.param('userId'), 10);

  if (isNaN(userId)) {
    return c.json(
      {
        status: getReasonPhrase(StatusCodes.BAD_REQUEST),
        message: 'Invalid user ID',
      },
      StatusCodes.BAD_REQUEST
    );
  }

  try {
    const analytics = await getUserAnalytics(userId);

    return c.json({
      status: getReasonPhrase(StatusCodes.OK),
      message: 'Analytics retrieved successfully',
      data: analytics,
    } satisfies ApiResponse<UserAnalyticsResponse>);
  } catch (error) {
    return c.json(
      {
        status: getReasonPhrase(StatusCodes.INTERNAL_SERVER_ERROR),
        message: error.message || 'An error occurred',
      },
      StatusCodes.INTERNAL_SERVER_ERROR
    );
  }
});

export default analyticsRoute;
