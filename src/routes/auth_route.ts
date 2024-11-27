import { ApiResponse } from "@/core/models/api_model";
import {
  LoginRequest,
  LoginResponseType,
  RefreshTokenResponseType,
  RegisterRequest,
} from "@/core/models/auth_model";
import { authMiddleware, Env } from "@/middlewares/auth_middleware";
import { errorValidationParser } from "@/middlewares/error_validation_parser";
import { loginUser, refreshToken, registerUser } from "@/services/auth_service";
import { zValidator } from "@hono/zod-validator";
import { Hono } from "hono";
import { getReasonPhrase, StatusCodes } from "http-status-codes";

const authRoute = new Hono<{ Variables: Env }>();

// Register route
authRoute.post(
  "/register",
  zValidator("json", RegisterRequest, errorValidationParser),
  async (c) => {
    const data = c.req.valid("json");

    await registerUser(data);

    return c.json(
      {
        message: "Account created successfully",
        status: getReasonPhrase(StatusCodes.CREATED),
        data: null,
      } satisfies ApiResponse<null>,
      StatusCodes.CREATED
    );
  }
);

// Login route
authRoute.post(
  "/login",
  zValidator("json", LoginRequest, errorValidationParser),
  async (c) => {
    const data = c.req.valid("json");
    const loginResponse = await loginUser(data);

    return c.json(
      {
        message: "Logged in successfully",
        status: getReasonPhrase(StatusCodes.CREATED),
        data: loginResponse,
      } satisfies ApiResponse<LoginResponseType>,
      StatusCodes.OK
    );
  }
);

authRoute.post("/refresh", authMiddleware, async (c) => {
  const token = c.var.tokenString;
  const refreshResponse = await refreshToken(token);

  return c.json(
    {
      message: "Token refreshed successfully",
      status: getReasonPhrase(StatusCodes.CREATED),
      data: {
        access_token: refreshResponse.access_token,
        token_type: refreshResponse.token_type,
        expires_in: refreshResponse.expires_in,
        refresh_token: refreshResponse.refresh_token,
        refresh_token_expires_in: refreshResponse.refresh_token_expires_in,
      },
    } satisfies ApiResponse<RefreshTokenResponseType>,
    StatusCodes.CREATED
  );
});

export default authRoute;
