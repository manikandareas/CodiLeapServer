INSERT INTO learning_paths (id, name, description, created_at, updated_at)
VALUES (3, 'DevOps - Beginner', 'Introduction to DevOps principles and practices.', 
        '2024-02-01', '2024-02-02');
INSERT INTO courses (id, name, learning_path_id, description, order_index, 
                     level, total_modules, total_enrollments, rating, estimated_duration, 
                     created_at, updated_at)
VALUES (7, 'Introduction to DevOps', 3, 
        'Understand the basics of DevOps, its practices, and its importance.', 1, 
        'beginner', 3, 10612, 
        4.87, 12, 
        '2024-11-01', '2024-11-01');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (19, 7, 'What is DevOps?', 
        'Learn the core concepts of DevOps.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (55, 19, 'DevOps Overview', 
        'Understand the definition and goals of DevOps.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (56, 19, 'Benefits of DevOps', 
        'Explore the advantages of adopting DevOps.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (57, 19, 'DevOps vs Traditional IT', 
        'Compare DevOps with traditional IT practices.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (20, 7, 'DevOps Lifecycle', 
        'Explore the phases of the DevOps lifecycle.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (58, 20, 'Plan and Develop', 
        'Understand planning and development in DevOps.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (59, 20, 'Build and Test', 
        'Learn about building and testing in DevOps.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (60, 20, 'Release and Monitor', 
        'Explore release and monitoring phases.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (21, 7, 'Version Control', 
        'Learn the basics of version control using Git.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (61, 21, 'What is Version Control?', 
        'Understand the role of version control in DevOps.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (62, 21, 'Basic Git Commands', 
        'Learn common Git commands.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (63, 21, 'Branching and Merging', 
        'Work with branches and merge changes in Git.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO courses (id, name, learning_path_id, description, order_index, 
                     level, total_modules, total_enrollments, rating, estimated_duration, 
                     created_at, updated_at)
VALUES (8, 'Continuous Integration Basics', 3, 
        'Learn the principles of Continuous Integration (CI) and its implementation.', 2, 
        'intermediate', 3, 8123, 
        4.92, 8, 
        '2024-11-01', '2024-11-01');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (22, 8, 'Introduction to CI', 
        'Understand the fundamentals of CI.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (64, 22, 'What is CI?', 
        'Learn the concept and benefits of CI.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (65, 22, 'Setting Up CI', 
        'Understand how to set up CI pipelines.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (66, 22, 'Tools for CI', 
        'Explore tools commonly used for CI.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (23, 8, 'Build Automation', 
        'Learn how to automate build processes.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (67, 23, 'Automating Builds', 
        'Understand the role of build automation.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (68, 23, 'Using Build Tools', 
        'Learn to use tools like Maven or Gradle.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (69, 23, 'Best Practices', 
        'Follow best practices for build automation.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (24, 8, 'Testing Automation', 
        'Understand the role of automated testing in CI.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (70, 24, 'Why Automate Tests?', 
        'Learn why automated testing is critical.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (71, 24, 'Creating Test Suites', 
        'Create effective test suites for CI pipelines.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (72, 24, 'Common Pitfalls', 
        'Avoid common pitfalls in testing automation.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO courses (id, name, learning_path_id, description, order_index, 
                     level, total_modules, total_enrollments, rating, estimated_duration, 
                     created_at, updated_at)
VALUES (9, 'Introduction to Cloud Deployment', 3, 
        'Learn how to deploy applications to the cloud effectively.', 3, 
        'advanced', 3, 9321, 
        4.89, 10, 
        '2024-11-01', '2024-11-01');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (25, 9, 'Cloud Platforms Overview', 
        'Understand the basics of cloud computing platforms.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (73, 25, 'What is Cloud Computing?', 
        'Learn the concept of cloud computing.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (74, 25, 'Popular Platforms', 
        'Explore AWS, Azure, and Google Cloud.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (75, 25, 'Choosing the Right Platform', 
        'Factors to consider when selecting a cloud provider.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (26, 9, 'Basic Deployment', 
        'Learn the basics of deploying applications to the cloud.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (76, 26, 'Deploying a Static Website', 
        'Steps to deploy a simple static website.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (77, 26, 'Deploying a Simple App', 
        'Deploy a basic application to the cloud.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (78, 26, 'Troubleshooting Deployments', 
        'Address common deployment issues.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO modules (id, course_id, name, description, order_index, 
                     created_at, updated_at)
VALUES (27, 9, 'Monitoring Basics', 
        'Learn how to monitor applications in the cloud.', 3, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (79, 27, 'What is Monitoring?', 
        'Understand the importance of monitoring.', 1, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (80, 27, 'Using Cloud Monitoring Tools', 
        'Explore monitoring tools like CloudWatch.', 2, 
        '2024-11-01', '2024-11-01');
INSERT INTO units (id, module_id, name, content, order_index, 
                   created_at, updated_at)
VALUES (81, 27, 'Setting Alerts', 
        'Set up alerts to track performance issues.', 3, 
        '2024-11-01', '2024-11-01');