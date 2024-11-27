import db from "@/core/db";
import { LearningPathResponseType } from "@/core/models/learning_path_model";

export const getAllLearningPaths = async (): Promise<
  LearningPathResponseType[]
> => {
  const learningPaths = await db.query.learningPaths.findMany({
    with: {
      courses: {
        columns: { id: true },
      },
    },
  });

  return learningPaths.map((it) => ({
    ...it,
    totalCourses: it.courses.length,
  }));
};

export const learningPathScreening = async (userId: number) => {};
