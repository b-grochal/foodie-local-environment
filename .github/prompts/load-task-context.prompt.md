---
description: "Load the task context by reading the task folder's details, examples, and research materials to build comprehensive understanding for implementation."
---

# Prime: Load Task Context

## Objective

Build comprehensive understanding of a specific task by loading its details, code examples, and research materials from its dedicated task folder, so that implementation can proceed with full context.

## Process

### 1. Identify Task Folder

- Get the name of the task folder to load from the user input: {{input:task_name:Enter the name of the task to load context for}}.
- Check if a folder with that name exists in the `.tasks` directory (e.g., `.tasks/my-new-feature`). If it does not exist, return an error message indicating that no task folder was found with that name and stop the process.

### 2. Read Task Details

- Read the `details.md` file inside the task folder.
- Understand the task's objectives, requirements, and any relevant information documented so far.
- If `details.md` is empty or lacks meaningful content, flag this in the output report — the task may not yet be fully scoped.

### 3. Load Code Examples

- List all files in the `examples` folder of the task directory.
- Read each file found to understand code patterns, snippets, or references that are helpful for implementing the task.
- If the folder is empty, note that no examples have been gathered yet.

### 4. Load Research Materials

- List all files in the `researches` folder of the task directory.
- Read each file found to understand existing code and codebase research relevant to the task.
- If the folder is empty, note that no research has been gathered yet.

### 5. Cross-Reference with Project Context

- Relate the task's objectives and materials to the broader project structure and conventions, if project context has already been loaded (e.g., via `load-project-context`).
- Flag any inconsistencies between the task's stated requirements and the current state of the codebase.

## Output Report

Provide a concise summary covering:

### Task Overview
- Task name and folder path (`.tasks/<task_name>`)
- Objectives and requirements extracted from `details.md`

### Code Examples
- List of files found in `examples/`
- Key patterns or snippets from each, and how they apply to the task

### Research Findings
- List of files found in `researches/`
- Key findings, existing code references, or codebase insights relevant to the task

### Readiness Assessment
- Whether `details.md`, `examples/`, and `researches/` together provide sufficient context to begin implementation
- Any gaps or missing information that should be filled in before starting

**Make this summary easy to scan - use bullet points and clear headers.**
