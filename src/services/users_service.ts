import { eq } from "drizzle-orm";
import { HTTPException } from "hono/http-exception";
import { StatusCodes } from "http-status-codes";
import db from "@/core/db/index";
import { users } from "@/core/db/schema/index";
import { UpdateUserRequestType } from "@/core/models/users_model";

export const updateUser = async (id: number, updates: UpdateUserRequestType) => {
  // Check if the user exists
  const existingUser = await db.query.users.findFirst({
    where: (user) => eq(user.id, id),
  });

  if (!existingUser) {
    throw new HTTPException(StatusCodes.NOT_FOUND, {
      message: "User not found",
    });
  }

  // Update the user
  const updatedUser = await db
    .update(users)
    .set({
      ...updates,
      updatedAt: new Date().toISOString(), 
    })
    .where(eq(users.id, id))
    .returning();

  if (updatedUser.length === 0) {
    throw new HTTPException(StatusCodes.INTERNAL_SERVER_ERROR, {
      message: "Failed to update user",
    });
  }

  return updatedUser[0];
};