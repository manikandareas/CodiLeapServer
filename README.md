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

---

## Visual Representation of Key Technologies

### Drizzle ORM:
![Drizzle ORM Diagram](data:image/jpeg;base64,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)

### Postgres SQL:
![Postgres SQL Diagram](https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Postgresql_elephant.svg/256px-Postgresql_elephant.svg.png)

### Hono JS:
![Hono JS Logo](https://hono.dev/images/hono.png)

---

## Notes
- This project uses Bun v1.1.34 and was initialized with `bun init`.
- Make sure your PostgreSQL server is running before starting the application.

For questions or issues, feel free to raise an issue in the GitHub repository or contact the project maintainer.

