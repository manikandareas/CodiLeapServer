# Course & Module Path API Spec

## Get Courses by Learning Path ID

Endpoint : GET /api/courses/{learningPathId}

- Authorization: Bearer {access_token}

Description : This endpoint is used to get all courses by learning path ID.

Response Body (Success) :

```json
{
  "message": "Courses retrieved successfully",
  "status": "OK",
  "data": [
    {
      "id": "integer",
      "name": "string",
      "learningPathId": "integer",
      "totalModules": "integer",
      "description": "string",
      "createdAt": "string",
      "updatedAt": "string",
      "orderIndex": "integer",
      // "progress": {
      //   "completed": "integer",
      //   "total": "integer",
      //   "percentage": "float"
      // }
    },
    ...
  ]
}
```

Response Body (Not Found) :

```json
{
  "status": "Not Found",
  "error": "learning path not found",
  "errors": null
}
```

## Get Modules by Course ID

Endpoint : POST /api/courses/{courseId}/modules

- Authorization: Bearer {access_token}

Description : This endpoint is used to get all modules by course ID.

Response Body (Success) :

```json
{
  "message": "Modules retrieved successfully",
  "status": "OK",
  "data": [
    {
      "id": "integer",
      "courseId": "integer",
      "name": "string",
      "description": "string",
      "orderIndex": "integer",
      "createdAt": "string",
      "updatedAt": "string",
      "units": [
        {
          "id": "integer",
          "moduleId": "integer",
          "name": "string",
          "content": "string",
          "orderIndex": "integer",
          "createdAt": "string",
          "updatedAt": "string"
        }
      ]
    },
    ...
  ]
}
```

Response Body (Not Found) :

```json
{
  "status": "Not Found",
  "error": "course not found",
  "errors": null
}
```
