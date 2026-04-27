---
description: "Create dedicated task folder."
---

# Create task folder

## Objective

Create dedicated task folder in the foodie-local-environment GitHub repository.

## Process

### 1. Get the name of the task folder to be created from the user input. 

- Get the name of the task from the user input: {{input:task_name:Enter the name of the task}}. The task name should be descriptive and concise, ideally summarizing the feature request that the task is related to.
- Validate the task name to ensure it does not contain any invalid characters or exceed a reasonable length (for example, 100 characters). If the task name is invalid, return an error message indicating the issue and stop the process.

### 2. Create Task Folder

- Check if a folder with the same name already exists in the .tasks directory. If it does, return an error message indicating that a task folder with the same name already exists and stop the process.
- If the folder does not exist, create a new folder in the .tasks directory with the name of the task provided by the user, for example `my-new-feature`. Ensure that the folder is created successfully and handle any potential errors that may arise during the folder creation process.

### 3. Populate Task Folder

- Create the following folders inside the newly created task folder:
  - `examples`: A folder to store the code examples related/helpful to the task.
  - `researches`: A folder to store existing code and codebase researches related/helpful for the task.
- The resulting folder structure should look like this:
  .tasks/
  └── my-new-feature/
      ├── examples/
      └── researches/