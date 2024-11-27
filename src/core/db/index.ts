import * as schema from "@/core/db/schema/index";
import { drizzle } from "drizzle-orm/node-postgres";
import { Pool } from "pg";

const pool = new Pool({
  connectionString: process.env.DATABASE_URL!,
  // host: Bun.env.DATABASE_HOST!,
  // user: Bun.env.DATABASE_USER!,
  // password: Bun.env.DATABASE_PASSWORD!,
  // port: Bun.env.DATABASE_PORT as unknown as number,
  // database: Bun.env.DATABASE_NAME!,
});
const db = drizzle({ client: pool, schema });

export default db;
