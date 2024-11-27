# Progress API Spec

## Update Course Progress

Endpoint : PATCH /api/progress/course/{courseId}

Description : This endpoint is used to update course progress.

- Authorization: Bearer {access_token}

Request Body :

```json
{
  "userId": "integer",
  "courseId": "integer",
  "currentModuleId": "integer",
  "completionStatus": "COMPLETED"
  // lisen id
}
```

Response Body (Success) :

```json
{
  "message": "Update course progress successfully",
  "status": "OK",
  "data": {
    "lessonId": "integer",
    "completionStatus": "string",
    "moduleProgress": "float"
    // "earnedBadges": ["string"]
  }
}
```

Response Body (Unauthorized) :

```json
{
  "status": "Bad Request",
  "error": "invalid token",
  "errors": null
}
```

Response Body (Not Found) :

```json
{
  "status": "Not Found",
  "error": "lesson not found",
  "errors": null
}
```

## Get all user progress

Endpoint : GET /api/progress/user/{userId}

- Authorization: Bearer {access_token}

description : This endpoint is used to get all user progress.

Response Body (Success) :

```json
{
  "message": "Screening learning path successfully",
  "status": "Created",
  "data": {
    "overallProgress": {
      "completedCourse": "integer",
      "totalCourse": "integer",
      "completedModule": "integer",
      "totalModule": "integer"
    },
    "currentStreak": "integer",
    "longestStreak": "integer",
    "averageDailyTime": "integer",
    "learningPathProgress": [
      {
        "pathId": "integer",
        "pathName": "string",
        "progress": "float"
      }
    ]
  }
}
```
