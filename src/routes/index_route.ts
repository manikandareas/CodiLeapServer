import { Hono } from "hono";
import { logger } from "hono/logger";

import { csrf } from "hono/csrf";
import authRoute from "./auth_route";
import { Env } from "@/middlewares/auth_middleware";

export const routes = (app: Hono<{ Variables: Env }>) => {
  app.use("*", logger());
  app.use("*", csrf({ origin: "localhost" }));

  app.get("/health", (c) =>
    c.json({
      uptime: process.uptime(),
      message: "Ok",
      date: new Date(),
    })
  );

  app.route("/auth", authRoute);
};
