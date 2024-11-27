/*
File konfigurasi untuk Drizzle ORM. Berisi informasi koneksi database, skema database, dan pengaturan lainnya.
 */

import { defineConfig } from "drizzle-kit";

import * as dotenv from "dotenv";

dotenv.config();

export default defineConfig({
  dialect: "postgresql",
  schema: "./src/core/db/schema/",
  out: "./drizzle",
  dbCredentials: {
    url: process.env.DATABASE_URL!,
    // host: process.env.DATABASE_HOST as string,
    // user: process.env.DATABASE_USER as string,
    // port: process.env.DATABASE_PORT as unknown as number,
    // database: process.env.DATABASE_NAME as string,
    // password: process.env.DATABASE_PASSWORD as string,
    ssl: process.env.DATABASE_SSL === "true",
  },
});
