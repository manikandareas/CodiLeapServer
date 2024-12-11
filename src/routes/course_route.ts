import { authMiddleware, Env } from "@/middlewares/auth_middleware";
import {
  completeModule,
  findUnitsByModuleId,
  getCoursesByLearningPathID,
  getModulesByCourseId,
} from "@/services/course_service";
import { Hono } from "hono";
import { StatusCodes } from "http-status-codes";

const courseRoute = new Hono<{ Variables: Env }>();

courseRoute.get("/:learningPathId", authMiddleware, async (c) => {
  const learningPathId = c.req.param("learningPathId");
  const courses = await getCoursesByLearningPathID(+learningPathId);

  return c.json({
    message: "Courses fetched successfully",
    status: StatusCodes.OK,
    data: courses,
  });
});

courseRoute.get("/:courseId/modules", authMiddleware, async (c) => {
  const courseId = c.req.param("courseId");

  const modules = await getModulesByCourseId(+courseId);

  return c.json({
    message: "Modules fetched successfully",
    status: StatusCodes.OK,
    data: modules,
  });
});

courseRoute.put("/:courseId/modules/complete", authMiddleware, async (c) => {
  const user = c.var.token;
  const courseId = c.req.param("courseId");
  console.log("courseId", courseId);

  const response = await completeModule(user.id, +courseId);

  return c.json({
    status: "OK",
    message: "Module completed successfully",
    data: response,
  });
});

courseRoute.get(
  "/:courseId/modules/:moduleId/units",
  authMiddleware,
  async (c) => {
    const courseId = c.req.param("courseId");
    const moduleId = c.req.param("moduleId");

    const units = await findUnitsByModuleId(+courseId, +moduleId);

    return c.json({
      message: "Units fetched successfully",
      status: StatusCodes.OK,
      data: units,
    });
  }
);

export default courseRoute;
