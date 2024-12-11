// models/update_user_model.ts
import { z } from "zod";

export const UpdateUserRequest = z
  .object({
    email: z
      .string()
      .email({ message: "Email should be a valid email" })
      .optional(),
    fullName: z.string().optional(),
    phoneNumber: z.string().optional(),
    address: z.string().optional(),
    dateOfBirth: z.string().optional(),
    studyHours: z.string().optional(),
    avatarUrl: z.string().optional(),
    isAlreadyScreened: z.boolean().optional(),
  })
  .strict();

export type UpdateUserRequestType = z.infer<typeof UpdateUserRequest>;
