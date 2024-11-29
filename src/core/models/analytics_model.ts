import { z } from 'zod';


export const DailyStatsSchema = z.object({
  timeSpent: z.number().int().min(0).describe('Total time spent studying in minutes'),
  lessonsCompleted: z.number().int().min(0).describe('Number of lessons completed'),
  quizzesTaken: z.number().int().min(0).describe('Number of quizzes taken')
});


export const WeeklyTrendItemSchema = z.object({
  date: z.string().describe('Date in ISO format'),
  timeSpent: z.number().int().min(0).describe('Time spent studying on this date'),
  progress: z.number().min(0).max(1).describe('Learning progress on a scale of 0 to 1')
});


export const LearningPatternsSchema = z.object({
  mostProductiveHours: z.array(z.number().int().min(0).max(23)).describe('Most productive hours of the day'),
  averageSessionDuration: z.number().int().min(0).describe('Average study session duration in minutes'),
  chronotype: z.enum(['Early Bird', 'Moderate', 'Night Owl']).describe('User\'s preferred study time')
});


export const UserAnalyticsResponseSchema = z.object({
  message: z.string(),
  status: z.literal('OK'),
  data: z.object({
    dailyStats: DailyStatsSchema,
    weeklyTrend: z.array(WeeklyTrendItemSchema),
    learningPatterns: LearningPatternsSchema
  })
});


export type DailyStats = z.infer<typeof DailyStatsSchema>;
export type WeeklyTrendItem = z.infer<typeof WeeklyTrendItemSchema>;
export type LearningPatterns = z.infer<typeof LearningPatternsSchema>;
export type UserAnalyticsResponse = z.infer<typeof UserAnalyticsResponseSchema>;