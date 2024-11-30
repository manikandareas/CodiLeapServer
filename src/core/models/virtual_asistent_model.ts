export interface ChatContext {
    currentModule?: string;
    currentLesson?: string;
  }
  
  export interface ChatRequest {
    userId: number;
    message: string;
    context: ChatContext;
  }
  
  export interface RelatedResource {
    type: 'LESSON' | 'MODULE' | 'EXTERNAL';
    title: string;
    link: string;
  }
  
  export interface VirtualAssistantChatResponse {
    message: string;
    status: string;
    data: {
      response: string;
      suggestions: string[];
      relatedResources: RelatedResource[];
    };
  }
  
  export interface VirtualAssistantChatData {
    id?: number;
    userId: number;
    question: string;
    answer: string;
    timestamp?: string;
  }