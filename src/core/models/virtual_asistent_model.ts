// export interface ChatContext {
//     currentModule?: string;
//     currentLesson?: string;
//   }
  
//   export interface ChatRequest {
//     userId: number;
//     message: string;
//     context: ChatContext;
//   }
  
//   export interface RelatedResource {
//     type: 'LESSON' | 'MODULE' | 'EXTERNAL';
//     title: string;
//     link: string;
//   }
  
//   export interface VirtualAssistantChatResponse {
//     message: string;
//     status: string;
//     data: {
//       response: string;
//       suggestions: string[];
//       relatedResources: RelatedResource[];
//     };
//   }
  
//   export interface VirtualAssistantChatData {
//     id?: number;
//     userId: number;
//     question: string;
//     answer: string;
//     timestamp?: string;
//   }


import { z } from "zod";

// Request Model
export const VirtualAssistantRequest = z.object({
  userId: z.number(),
  context: z.string(),
  question: z.string(),
});

export type VirtualAssistantRequestType = z.infer<typeof VirtualAssistantRequest>;

// Response Model
export const VirtualAssistantResponse = z.object({
  success: z.boolean(),
  answer: z.string(),
  score: z.number(),
  message: z.string(),
});

export type VirtualAssistantResponseType = z.infer<typeof VirtualAssistantResponse>;




