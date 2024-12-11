import { Hono } from "hono";
import { UpdateUserRequest } from "@/core/models/users_model";
import { updateUser } from "@/services/users_service";
import { StatusCodes, getReasonPhrase } from "http-status-codes";
import { HTTPException } from "hono/http-exception";

const userRoute = new Hono();

userRoute.put(
  "/:id",
  async (c) => {
    const id = parseInt(c.req.param("id"), 10);
    if (isNaN(id)) {
      return c.json(
        {
          message: "Invalid user ID",
          status: getReasonPhrase(StatusCodes.BAD_REQUEST),
          data: null,
        },
        StatusCodes.BAD_REQUEST
      );
    }

    
    const body = await c.req.json();
    const parsedBody = UpdateUserRequest.safeParse(body);

    if (!parsedBody.success) {
      return c.json(
        {
          message: "Invalid request body",
          status: getReasonPhrase(StatusCodes.BAD_REQUEST),
          data: parsedBody.error.errors,
        },
        StatusCodes.BAD_REQUEST
      );
    }

    
    try {
      const updatedUser = await updateUser(id, parsedBody.data);
      return c.json(
        {
          message: "User updated successfully",
          status: getReasonPhrase(StatusCodes.OK),
          data: updatedUser,
        },
        StatusCodes.OK
      );
    } catch (error) {
      if (error instanceof HTTPException) {
        return c.json(
          {
            message: error.message,
            status: getReasonPhrase(error.status || StatusCodes.INTERNAL_SERVER_ERROR),
            data: null,
          },
          error.status || StatusCodes.INTERNAL_SERVER_ERROR
        );
      }

      return c.json(
        {
          message: "An unexpected error occurred",
          status: getReasonPhrase(StatusCodes.INTERNAL_SERVER_ERROR),
          data: null,
        },
        StatusCodes.INTERNAL_SERVER_ERROR
      );
    }
  }
);

export default userRoute;
