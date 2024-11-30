import db from '@/core/db';
import { virtualAssistantChats, users } from '@/core/db/schema/schema';
import { eq } from 'drizzle-orm';
import { HTTPException } from 'hono/http-exception';
import { StatusCodes } from 'http-status-codes';
import {
  ChatRequest,
  VirtualAssistantChatResponse,
  VirtualAssistantChatData,
  RelatedResource,
} from '@/core/models/virtual_asistent_model';


export async function createChat(chatRequest: ChatRequest): Promise<VirtualAssistantChatResponse> {
  return db.transaction(async (tx) => {
    // Verify user exists
    const user = await tx.query.users.findFirst({
      where: eq(users.id, chatRequest.userId),
    });

    if (!user) {
      throw new HTTPException(StatusCodes.NOT_FOUND, {
        message: 'User not found',
      });
    }

   
    const aiResponse = generateResponse(chatRequest);

    
    const suggestions = generateSuggestions(chatRequest);

    
    const relatedResources = generateRelatedResources(chatRequest);

   
    const chatData: VirtualAssistantChatData = {
      userId: chatRequest.userId,
      question: chatRequest.message,
      answer: aiResponse,
    };

   
    await tx.insert(virtualAssistantChats).values(chatData);

    
    return {
      message: 'Chat with virtual assistant successfully',
      status: 'Created',
      data: {
        response: aiResponse,
        suggestions,
        relatedResources,
      },
    };
  });
}


function generateResponse(chatRequest: ChatRequest): string {
  const { message, context } = chatRequest;

  
  if (context.currentModule) {
    return `I noticed you're currently working on the module: ${context.currentModule}. 
            You asked: "${message}". 
            Here's a helpful response tailored to your current learning context.`;
  }

  
  return `Thank you for your message: "${message}". 
          I'm ready to help you with your learning journey.`;
}


function generateSuggestions(chatRequest: ChatRequest): string[] {
  const baseSuggestions = [
    'Continue with your current module',
    'Explore related learning paths',
    'Review previous lessons',
  ];

  
  if (chatRequest.context.currentModule) {
    baseSuggestions.push(`Dive deeper into ${chatRequest.context.currentModule}`);
  }

  return baseSuggestions;
}


function generateRelatedResources(chatRequest: ChatRequest): RelatedResource[] {
  const baseResources: RelatedResource[] = [
    {
      type: 'MODULE',
      title: 'Advanced Learning Techniques',
      link: '/learning/modules/advanced-techniques',
    },
    {
      type: 'EXTERNAL',
      title: 'Learning Resources Hub',
      link: 'https://learning-resources.example.com',
    },
  ];

  /
  if (chatRequest.context.currentModule) {
    baseResources.push({
      type: 'MODULE',
      title: `More on ${chatRequest.context.currentModule}`,
      link: `/learning/modules/${chatRequest.context.currentModule.toLowerCase().replace(/ /g, '-')}`,
    });
  }

  return baseResources;
}
