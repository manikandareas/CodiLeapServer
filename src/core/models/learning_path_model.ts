// {
//     "id": 1,
//     "name": "Learning Path 1",
//     "description": "Learning Path 1 Description",
//     "level": "BEGINNER|INTERMEDIATE|ADVANCED",
//     "totalModules": "4",
//     "estimatedDuration": "4 hours",
//     "createdAt": "2021-01-01T00:00:00.000Z",
//     "updatedAt": "2021-01-01T00:00:00.000Z"
//   },

import { z } from "zod";
import { learningPathLevelEnum } from "../db/schema";

export const LearningPathResponse = z.object({
  id: z.number(),
  name: z.string(),
  description: z.string(),
  level: z.enum(learningPathLevelEnum),
  totalCourses: z.number(),
  estimatedDuration: z.number().nullable(),
  createdAt: z.string(),
  updatedAt: z.string(),
});

export type LearningPathResponseType = z.infer<typeof LearningPathResponse>;
