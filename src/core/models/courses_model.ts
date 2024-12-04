import { z } from "zod";
import { courseLevelEnum } from "../db/schema";

export const CoursesResponse = z.object({
  id: z.number(),
  name: z.string(),
  learningPathId: z.number(),
  totalModules: z.number().nullable(),
  description: z.string().nullable(),
  createdAt: z.string(),
  updatedAt: z.string(),
  orderIndex: z.number(),
  level: z.enum(courseLevelEnum),
  estimatedDuration: z.number().nullable(),
  rating: z.string().nullable(),
  totalEnrollments: z.number().nullable(),
});

export type CoursesResponseType = z.infer<typeof CoursesResponse>;

export const UnitResponse = z.object({
  id: z.number(),
  moduleId: z.number(),
  name: z.string(),
  content: z.string().nullable(),
  orderIndex: z.number().nullable(),
  createdAt: z.string(),
  updatedAt: z.string(),
});

export type UnitResponseType = z.infer<typeof UnitResponse>;

export const ModulesResponse = z.object({
  id: z.number(),
  courseId: z.number(),
  name: z.string(),
  description: z.string().nullable(),
  orderIndex: z.number(),
  createdAt: z.string(),
  updatedAt: z.string(),
  units: z.array(UnitResponse),
});

export type ModulesResponseType = z.infer<typeof ModulesResponse>;
