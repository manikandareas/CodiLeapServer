//     {
//       "id": 1,
//       "name": "Learning Path 1",
//       "level": "BEGINNER|INTERMEDIATE|ADVANCED",
//       "description": "Learning Path 1 Description",
//       "estimatedDuration": "4 hours",
//       "createdAt": "2021-01-01T00:00:00.000Z",
//       "updatedAt": "2021-01-01T00:00:00.000Z",
//       "courses": [
//          "id": "integer",
//         "name": "string",
//         "learningPathId": "integer",
//         "totalModules": "integer",
//         "description": "string",
//         "createdAt": "string",
//         "updatedAt": "string",
//         "orderIndex": "integer",
//       ]
//     },

import { z } from "zod";
import { learningPathLevelEnum } from "../db/schema";
import { CoursesResponse } from "./courses_model";

export const LearningPathResponse = z.object({
  id: z.number(),
  name: z.string(),
  level: z.enum(learningPathLevelEnum),
  description: z.string(),
  estimatedDuration: z.number().nullable(),
  createdAt: z.string(),
  updatedAt: z.string(),
  courses: z.array(CoursesResponse),
});

export type LearningPathResponseType = z.infer<typeof LearningPathResponse>;
