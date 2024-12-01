import db from "@/core/db/index";
import { users } from "@/core/db/schema/index";
import {
  JwtPayload,
  LoginRequestType,
  LoginResponseType,
  RefreshTokenResponseType,
  RegisterUserRequestType,
} from "@/core/models/auth_model";
import { decodeToken, signToken, verifyToken } from "@/core/utils/jwt";
import * as bcrypt from "bcrypt";
import { eq } from "drizzle-orm";
import { HTTPException } from "hono/http-exception";
import { StatusCodes } from "http-status-codes";

export const registerUser = async (request: RegisterUserRequestType) => {
  // Check if email is already registered
  const emailExists = await db.query.users.findFirst({
    where: (user) => eq(user.email, request.email),
  });

  if (emailExists) {
    throw new HTTPException(StatusCodes.CONFLICT, {
      message: "Email already exists",
    });
  }

  // Hash the password
  const hashedPassword = await bcrypt.hash(request.password, 10);

  // Create a new user
  await db.insert(users).values({
    email: request.email,
    hashedPassword: hashedPassword,
    avatarUrl: `https://robohash.org/${request.email}`,
  });
};

export const loginUser = async (
  request: LoginRequestType
): Promise<LoginResponseType> => {
  // Check if the user exists
  const user = await db.query.users.findFirst({
    where: (user, { eq }) => eq(user.email, request.email),
  });

  if (!user) {
    throw new HTTPException(StatusCodes.UNAUTHORIZED, {
      message: "Invalid credentials",
    });
  }

  // Verify the password
  const isPasswordMatch = await bcrypt.compare(
    request.password,
    user.hashedPassword
  );

  if (!isPasswordMatch) {
    throw new HTTPException(StatusCodes.UNAUTHORIZED, {
      message: "Invalid credentials",
    });
  }

  // Generate JWT tokens
  const jwtPayload: JwtPayload = {
    id: user.id,
    email: user.email,
  };

  const accessToken = signToken(jwtPayload);
  const refreshToken = signToken(jwtPayload, { expiresIn: "7d" });

  // Return the response with tokens and user data
  return {
    accessToken,
    refreshToken,
    tokenType: "Bearer",
    expiresIn: 3600, // 1 hour
    refreshTokenExpiresIn: 604800, // 7 days
    user: {
      id: user.id,
      email: user.email,
      avatarUrl: user.avatarUrl as string,
      isAlreadyScreened: user.isAlreadyScreened,
    },
  };
};

export const refreshToken = async (
  refreshToken: string
): Promise<RefreshTokenResponseType> => {
  try {
    // Verify the refresh token
    const decoded = verifyToken(refreshToken);

    // Check if user exists
    const user = await db.query.users.findFirst({
      where: (user, { eq }) => eq(user.id, decoded.id),
    });

    if (!user) {
      throw new HTTPException(StatusCodes.UNAUTHORIZED, {
        message: "User not found",
      });
    }

    // Generate new tokens
    const newAccessToken = signToken({
      id: user.id,
      // email: user.email,
    });

    const newRefreshToken = signToken(
      {
        id: user.id,
        //  email: user.email
      },
      { expiresIn: "7d" }
    );

    // Decode tokens to get expiration
    const accessTokenDecoded = decodeToken(newAccessToken);
    const refreshTokenDecoded = decodeToken(newRefreshToken);

    return {
      access_token: newAccessToken,
      token_type: "Bearer",
      expires_in: accessTokenDecoded.exp! - Math.floor(Date.now() / 1000),
      refresh_token: newRefreshToken,
      refresh_token_expires_in:
        refreshTokenDecoded.exp! - Math.floor(Date.now() / 1000),
    };
  } catch (error: any) {
    throw new HTTPException(StatusCodes.UNAUTHORIZED, {
      message: error.message,
    });
  }
};
