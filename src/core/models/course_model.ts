import { z } from "zod";

export const ModuleResponse = z.object({
  id: z.number(),
  courseId: z.number(),
  name: z.string(),
  description: z.string().nullable(),
  createdAt: z.string(),
  updatedAt: z.string(),
});

export type ModuleType = z.infer<typeof ModuleResponse>;

export const CourseResponse = z.object({
  id: z.number(),
  name: z.string(),
  description: z.string().nullable(),
  createdAt: z.string(),
  updatedAt: z.string(),
  modules: z.array(ModuleResponse),
  progress: z.object({
    completed: z.number(),
    total: z.number(),
    percentage: z.number(),
  }),
});

export type CourseType = z.infer<typeof CourseResponse>;

export const CoursesWithProgressResponse = z.array(CourseResponse);

export type CoursesWithProgressType = z.infer<
  typeof CoursesWithProgressResponse
>;
