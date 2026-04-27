---
description: "Create dedicated task folder based on an issue in a GitHub repository. The task should include the issue title, description, and any relevant labels or assignees."
---

# Create Task from GitHub Issue

## Objective

Create dedicated task folder based on an issue in the foodie-local-environment GitHub repository.

## Process

### 1. Fetch Issue Details

- Fetch the details about the Github issue with the following number: {{input:issue_number:Enter the issue number}} in the repository foodie-local-environment. Get the title and description of the issue, as well as any relevant labels or assignees.
- If the issue does not exist, return an error message indicating that the issue number is invalid and stop the process.

### 2. Create Task Folder

- Check if a folder with the name of the issue number and title (for example, `issue-123-My-Feature-Request`) already exists in the .tasks directory. If it does, return an error message indicating that a task folder already exists for the issue and stop the process.
- If the folder does not exist, create a new folder in the .tasks directory with the name of the issue number and issue title, for example `issue-123-My-Feature-Request`.

### 3. Populate Task Folder

- Create the following folders inside the newly created task folder:
  - `examples`: A folder to store the code examples related/helpful to the issue.
  - `researches`: A folder to store existing code and codebase researches related/helpful for the issue.