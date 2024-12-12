# Codileap Server

## Project Structure

```bash
src/
├── core/
│   ├── db/
│   ├── models/
│   │   ├── analytics_models.ts
│   │   ├── api_model.ts
│   │   ├── auth_models.ts
│   │   ├── badge_model.ts
│   │   ├── course_model.ts
│   │   ├── courses_model.ts
│   │   └── learning_path_models.ts
│   └── utils/
│       ├── jwts.ts
│       └── middlewares/
│           ├── auth_middleware.ts
│           └── error_validation_parser.ts
├── routes/
│   ├── analytics_route.ts
│   ├── auth_route.ts
│   ├── badge_route.ts
│   ├── course_route.ts
│   ├── index_route.ts
│   ├── learning_path_route.ts
│   ├── progress_route.ts
│   ├── quiz_route.ts
│   └── virtual_asisten_route.ts
├── services/
│   ├── analytics_service.ts
│   ├── auth_service.ts
│   ├── badge_service.ts
│   ├── course_service.ts
│   ├── learning_path_service.ts
│   ├── progress_service.ts
│   ├── quiz_service.ts
│   └── virtual_asistan_service.ts
├── index.ts
├── .gitignore
├── README.md
├── bun.lockb
├── drizzle.config.ts
├── package.json
└── tsconfig.json
```

---

## Dependencies

This project leverages the following technologies:

- **[Bun](https://bun.sh):** A fast all-in-one JavaScript runtime optimized for speed.
- **Postgres:** A robust relational database system.
- **Drizzle ORM:** A type-safe ORM for TypeScript with a focus on simplicity and power.
- **Hono JS:** A minimalist web framework for building fast and scalable web applications.

---

## Setup Guide

### 1. Clone the repository:
```bash
git clone https://github.com/your-username/your-project.git
```

### 2. Install dependencies:
```bash
cd your-project
bun install
```

### 3. Set up the database:

Generate database schema and apply migrations:
```bash
bun run db:generate
bun run db:migrate
```

### 4. Configure environment variables:

Create a `.env` file in the project root with the following:
```bash
DATABASE_URL=postgres://username:password@localhost:5432/your_database
```

### 5. Start the development server:
```bash
bun run dev
```

### 6. Access the database using Drizzle Studio:
```bash
bun run db:studio
```

---

## Key Features and Details

### **Database Models**
The database models are defined in `core/db` using **Drizzle ORM**.

- **Zod Validation:** Models incorporate [Zod](https://zod.dev/) to validate schema consistency. This ensures that only valid data can be persisted into the database.
- **Schema Example:**

  ```typescript
  import { z } from 'zod';

  const UserSchema = z.object({
      id: z.string(),
      email: z.string().email(),
      password: z.string().min(8),
      createdAt: z.date(),
  });
  export type User = z.infer<typeof UserSchema>;
  ```

  This model is enforced across the application for type safety and validation.

### **Routes**
The routes are implemented in the `src/routes` directory. Each route handles a specific module of the application (e.g., analytics, courses, badges).

#### HTTP Methods Used:
- `GET`: Retrieve resources.
- `POST`: Create new resources.
- `PUT`: Update existing resources.
- `DELETE`: Remove resources.

#### Example Route:
```typescript
import { Hono } from 'hono';
const app = new Hono();

app.get('/analytics', async (ctx) => {
  const data = await analyticsService.getAll();
  return ctx.json(data);
});

export default app;
```

### **Services**
Services manage business logic and interact with the database. They act as a bridge between routes and models.

#### Example Service:
```typescript
import { db } from '../core/db';

export const analyticsService = {
  async getAll() {
    return db.analytics.findMany();
  },
};
```


## Notes
- This project uses Bun v1.1.34 and was initialized with `bun init`.
- Make sure your PostgreSQL server is running before starting the application.

For questions or issues, feel free to raise an issue in the GitHub repository or contact the project maintainer.

