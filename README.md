  # codileap_server 
  # Structur Project
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

Dependencies
The project uses the following dependencies:

bun - a fast JavaScript runtime
Postgres - the database used for the application

Setup

1. Clone the repository:
   ``` bash
   git clone https://github.com/your-username/your-project.git
   ```
2. Install dependencies:
   ``` bash
   cd your-project
    bun install
   ```
3. Set up the database:
   ``` bash
   bun run db:generate
   bun run db:migrate
   ```
4. Create a .env file in the project root and add the following environment variables :
   ``` bash
   DATABASE_URL=postgres://username:password@localhost:5432/your_database
   ```
5. Start the development server:
   ``` bash
   bun run dev
   ```
6. To access the Postgres database, you can use the following command:
   ``` bash
   bun run db:studio
   ```
   



This project was created using `bun init` in bun v1.1.34. [Bun](https://bun.sh) is a fast all-in-one JavaScript runtime.
