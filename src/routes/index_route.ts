import { Hono } from "hono";
import { logger } from "hono/logger";

import { csrf } from "hono/csrf";
import authRoute from "./auth_route";
import quizRoute from "./quiz_route";
import progressRoute from "./progress_route";
import courseRoute from "./course_route";

export const routes = (app: Hono) => {
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
  app.route("/quiz", quizRoute);
  app.route("/progress", progressRoute);
  app.route("/course",courseRoute);
};
