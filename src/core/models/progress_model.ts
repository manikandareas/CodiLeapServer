// id: serial().primaryKey().notNull(),
// userId: integer("user_id").notNull(),
// courseId: integer("course_id").notNull(),
// currentModuleId: integer("current_module_id"),
// completionStatus:
//   completionStatus("completion_status").default("not_started"),
// startedAt: timestamp("started_at", {
//   withTimezone: true,
//   mode: "string",
// })
//   .default(sql`CURRENT_TIMESTAMP`)
//   .notNull(),
// completedAt: timestamp("completed_at", {
//   withTimezone: true,
//   mode: "string",
// }),

import { z } from "zod";
import { completionStatus, completionStatusEnum } from "../db/schema";

export const UpdateUserCourseProgressResponse = z.object({
  id: z.number(),
  userId: z.number(),
  courseId: z.number(),
  currentModuleId: z.number().nullable(),
  completionStatus: z.string(),
  startedAt: z.string(),
  completedAt: z.string().nullable(),
});

export type UpdateUserCourseProgressType = z.infer<
  typeof UpdateUserCourseProgressResponse
>;

export const UpdateUserCourseProgressRequest = z.object({
  currentModuleId: z.number().nullable(),
  completionStatus: z.enum(completionStatusEnum),
  completedAt: z.string().nullable(),
});

export type UpdateUserCourseProgressRequestType = z.infer<
  typeof UpdateUserCourseProgressRequest
>;
