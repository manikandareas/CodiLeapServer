import { Hono } from "hono";
import { logger } from "hono/logger";

import { csrf } from "hono/csrf";
import authRoute from "./auth_route";
import quizRoute from "./quiz_route";
import progressRoute from "./progress_route";
import learningPathRoute from "./learning_path_route";
import courseRoute from "./course_route";
import badgesRoute from "./badge_route";
import analyticsRoute from "./analytics_route";

export const routes = (app: Hono) => {
  app.use("*", logger());
  // app.use("*", csrf({ origin: "localhost" }));
  // app.use("*", csrf({ origin: "localhost" }));

  app.get("/", (c) => c.json({ message: "Welcome to the API" }));

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
  app.route("/learning-paths", learningPathRoute);
  app.route("/courses", courseRoute);
  app.route("/badges", badgesRoute);
  app.route("/analytics", analyticsRoute);
};
