---
description: "Prepare comprehensive implementation plan based on the current conversation with deep codebase analysis and research."
---
# Prepare comprehensive implementation plan for conversation

## Objective

Prepare a **comprehensive implementation plan** through systematic codebase analysis, external research, and strategic planning based on the current conversation context and discussion. The plan should be detailed and context-rich, enabling an execution agent to implement the feature successfully on the first attempt without needing additional information or research.

**Core Principle**: We do NOT write code in this phase. Our goal is to create a context-rich implementation plan that enables one-pass implementation success for AI agents.

**Key Philosophy**: Context is King. The plan must contain ALL information needed for implementation — patterns, mandatory reading, documentation, validation commands — so the execution agent succeeds on the first attempt.

**Zero-Deduction Principle (applies most strictly to the STEP-BY-STEP TASKS section)**: An execution agent must never have to *infer*, *guess*, or *choose between alternatives* to complete a task. Every task must show the literal file content or literal code change required. If you are not certain what the exact code should look like, that is a signal to go research or read more of the codebase first — not a signal to write a vaguer task description. A task that says "add proper error handling" or "update the function to support X" without showing the actual code is an incomplete task and must not ship in the final plan.

## Process

### Phase 1: Feature Understanding

**Deep Feature Analysis:**
- Extract the core problem being solved
- Identify user value and business impact
- Determine feature type: New Capability/Enhancement/Refactor/Bug Fix
- Assess complexity: Low/Medium/High
- Map affected systems and components

**Create User Story Format Or Refine If Story Was Provided By The User:**
```
As a <type of user>
I want to <action/goal>
So that <benefit/value>
```

### Phase 2: Codebase Intelligence Gathering

**Use specialized agents and parallel analysis:**

**1. Project Structure Analysis**
- Detect primary language(s), frameworks, and runtime versions
- Map directory structure and architectural patterns
- Identify service/component boundaries and integration points
- Locate configuration files
- Find environment setup and build processes

**2. Pattern Recognition** (Use specialized subagents when beneficial)
- Search for similar implementations in codebase
- Identify coding conventions:
  - Naming patterns (CamelCase, snake_case, kebab-case)
  - File organization and module structure
  - Error handling approaches
  - Logging patterns and standards
- Extract common patterns for the feature's domain
- Document anti-patterns to avoid
- Check `copilot-instructions.md` for project-specific rules and conventions

**3. Dependency Analysis**
- Catalog external libraries relevant to feature
- Understand how libraries are integrated (check imports, configs)
- Note library versions and compatibility requirements

**4. Integration Points**
- Identify existing files that need updates
- Determine new files that need creation and their locations
- Map router/API registration patterns
- Understand database/model patterns if applicable
- Identify authentication/authorization patterns if relevant

**5. Verbatim Extraction for Planned Changes (mandatory)**
- For every existing file you've identified as needing an UPDATE in Phase 5, **actually open and read the current file content** — do not reconstruct it from memory or from a partial earlier view.
- Extract the **exact** lines, function bodies, or blocks that will be touched, with their real line numbers. These verbatim excerpts are what will become the BEFORE blocks in the STEP-BY-STEP TASKS section — they must match the file character-for-character.
- For every new file you plan to CREATE, draft its complete intended content now (imports, full function bodies, exports) so it can be dropped into the plan unchanged later. Don't defer this to Phase 5 — Phase 5 is assembly, not authoring.
- If a planned change depends on a library/API whose exact method signatures or import paths you're not 100% sure of, resolve this now via research (docs, source, `node_modules`/installed package inspection) — never guess an import path or function signature in the final plan.

**Clarify Ambiguities:**
- If requirements are unclear at this point, ask the user to clarify before you continue
- Get specific implementation preferences (libraries, approaches, patterns)
- Resolve architectural decisions before proceeding
- If there are multiple valid technical approaches and the user hasn't expressed a preference, **make the decision yourself, state it explicitly, and justify it** — do not leave it open for the execution agent to decide. An open decision is an ambiguity that breaks one-pass implementation.

### Phase 4: Deep Strategic Thinking

**Think Harder About:**
- How does this feature fit into the existing architecture?
- What are the critical dependencies and order of operations?
- What could go wrong? (Edge cases, race conditions, errors)
- What performance implications exist?
- Are there security considerations?
- How maintainable is this approach?

**Design Decisions:**
- Choose between alternative approaches with clear rationale
- Design for extensibility and future modifications
- Plan for backward compatibility if needed
- Consider scalability implications

### Phase 5: Plan Structure Generation

**Create comprehensive plan with the following structure:**

What's below here is a template for you to fill for the implementation agent:

```markdown
# Feature: <feature-name>

The following plan should be complete, but it's important that you validate documentation and codebase patterns and task sanity before you start implementing.

Pay special attention to naming of existing utils, types, and models. Import from the right files etc.

## Feature Description
<Detailed description of the feature, its purpose, and value to users>

## User Story
As a <type of user>
I want to <action/goal>
So that <benefit/value>

## Problem Statement
<Clearly define the specific problem or opportunity this feature addresses>

## Solution Statement
<Describe the proposed solution approach and how it solves the problem>

## Feature Metadata
**Feature Type**: [New Capability/Enhancement/Refactor/Bug Fix]
**Estimated Complexity**: [Low/Medium/High]
**Primary Systems Affected**: [List of main components/services]
**Dependencies**: [External libraries or services required]

---

## CONTEXT REFERENCES

### Relevant Codebase Files — YOU MUST READ THESE BEFORE IMPLEMENTING
<List files with line numbers and relevance. Where a file will be changed in STEP-BY-STEP TASKS, the excerpt quoted there must match these line numbers exactly.>
- `path/to/file.py` (lines 15-45) - Why: Contains pattern for X that we'll mirror
- `path/to/model.py` (lines 100-120) - Why: Database model structure to follow
- `path/to/test.py` - Why: Test pattern example

### New Files to Create
- `path/to/new_service.py` - Service implementation for X functionality
- `path/to/new_model.py` - Data model for Y resource
- `tests/path/to/test_new_service.py` - Unit tests for new service

### Patterns to Follow
<Specific patterns extracted from codebase — actual verbatim code excerpts copied from the project, not paraphrased descriptions>

**Naming Conventions:** (for example)
**Error Handling:** (for example)
**Logging Pattern:** (for example)
**Other Relevant Patterns:** (for example)

---

## IMPLEMENTATION PLAN

### Phase 1: Foundation
<Describe foundational work needed before main implementation>
**Tasks:**
- Set up base structures (schemas, types, interfaces)
- Configure necessary dependencies
- Create foundational utilities or helpers

### Phase 2: Core Implementation
<Describe the main implementation work>
**Tasks:**
- Implement core business logic
- Create service layer components
- Add API endpoints or interfaces
- Implement data models

### Phase 3: Integration
<Describe how feature integrates with existing functionality>
**Tasks:**
- Connect to existing routers/handlers
- Register new components
- Update configuration files
- Add middleware or interceptors if needed

### Phase 4: Testing & Validation
<Describe testing approach>
**Tasks:**
- Implement unit tests for each component
- Create integration tests for feature workflow
- Add edge case tests
- Validate against acceptance criteria

---

## STEP-BY-STEP TASKS

IMPORTANT: Execute every task in order, top to bottom. Each task is atomic, independently testable, and **fully self-contained** — it must contain every literal detail needed to perform it with zero deduction, zero invented code, and zero choice between alternative implementations.

Every task MUST use one of the four formats below depending on its **ACTION**. Do not deviate from these formats and do not substitute a prose description for a code block where a code block is required.

#### Format A — CREATE (new file)

```markdown
### Task N: CREATE {exact/file/path}
**ACTION**: CREATE
**FILE**: `exact/file/path.ext`
**PURPOSE**: <one line — why this file exists>
**PATTERN**: <mirrored from `existing/file.ext:L10-L40`, if applicable — and show that excerpt under "Patterns to Follow" or inline here>

**FULL CONTENT** (complete, copy-paste ready — this is the entire file, not a fragment):
\`\`\`<language>
<complete file content>
\`\`\`

**IMPORTS**: <call out anything non-obvious from the content above, e.g. packages that must be installed first and the install command>
**GOTCHA**: <known pitfalls, version constraints, ordering requirements — omit if none>
**VALIDATE**: `<exact, non-interactive, executable command>`
```

> Exception: if the file is generated by a scaffolding tool/CLI rather than hand-written (e.g. `create-next-app`, `shadcn add`, codegen), replace FULL CONTENT with the exact command(s) to run, plus the exact resulting file path(s) to verify — this still requires zero deduction, the agent just runs the given command instead of typing the file.

#### Format B — UPDATE (modify part of an existing file)

```markdown
### Task N: UPDATE {exact/file/path}
**ACTION**: UPDATE
**FILE**: `exact/file/path.ext`
**PURPOSE**: <one line — why this change is needed>
**LOCATE**: <exact anchor to find in the file — a unique string, function/class name, or line range from the verbatim excerpt gathered in Phase 2.5>

**BEFORE** (verbatim — copied exactly from the current file, including whitespace):
\`\`\`<language>
<exact existing code being replaced>
\`\`\`

**AFTER** (exact replacement):
\`\`\`<language>
<exact new code>
\`\`\`

**GOTCHA**: <pitfalls — e.g. "this function is also called from X, verify callers still type-check">
**VALIDATE**: `<exact, non-interactive, executable command>`
```

#### Format C — ADD (insert new code into an existing file without replacing anything)

```markdown
### Task N: ADD {what is being added} to {exact/file/path}
**ACTION**: ADD
**FILE**: `exact/file/path.ext`
**PURPOSE**: <one line>
**INSERT AFTER** (exact anchor — the last existing line/string before the insertion point, verbatim):
\`\`\`<language>
<anchor line(s)>
\`\`\`

**NEW CODE** (exact code being inserted at that point):
\`\`\`<language>
<new code>
\`\`\`

**GOTCHA**: <ordering/registration pitfalls — e.g. "must be registered before the catch-all route">
**VALIDATE**: `<exact, non-interactive, executable command>`
```

#### Format D — REMOVE / REFACTOR / MIRROR

Use the same BEFORE/AFTER literal-code structure as Format B. REMOVE simply has an empty or explicitly-stated-empty AFTER. REFACTOR shows the exact before-code and exact after-code even though behavior is unchanged. MIRROR shows the exact source pattern being copied (verbatim, with its file:line) directly above the exact adapted code being created.

#### Non-code tasks (installs, migrations, infra commands)

Where a task is purely a shell operation (installing packages, running a migration generator, starting a service), give the exact command block exactly as in Format A's CLI exception — every command must be copy-paste runnable with no placeholders left for the agent to fill in (no `<your-value-here>`; use the real, decided value).

#### Rules that apply to every task, regardless of format

- **No placeholders.** Never write `// TODO: implement logic` or `<add your logic here>`. If logic is non-trivial, write the actual logic.
- **No open choices.** Never write "use either X or Y library" — Phase 4 already decided this; the task states the one decision.
- **No unverified imports/paths.** Every import statement and API call shown must be one you verified exists (via docs, installed package source, or existing codebase usage) during Phase 2.5/Research — cite where you verified it in a GOTCHA or PATTERN line if it's non-obvious (e.g. beta package, recently changed API).
- **Line numbers must match.** Any BEFORE block's surrounding context must be consistent with the line numbers given in "Relevant Codebase Files" earlier in the plan.
- **Self-contained.** An agent reading only this one task (plus the CONTEXT REFERENCES section) should be able to execute it without opening the source repo to "see what's there" — the task already shows what's there.

<Continue with all tasks in dependency order, using Formats A–D as appropriate...>

---

## TESTING STRATEGY
<Define testing approach based on project's test framework and patterns discovered during research>

### Unit Tests
<Scope and requirements based on project standards>
Design unit tests with fixtures and assertions following existing testing approaches

### Integration Tests
<Scope and requirements based on project standards>

### Edge Cases
<List specific edge cases that must be tested for this feature>

---

## VALIDATION COMMANDS
<Define validation commands based on project's tools discovered in Phase 2>

Execute every command to ensure zero regressions and 100% feature correctness.

### Level 1: Syntax & Style
<Project-specific linting and formatting commands>

### Level 2: Unit Tests
<Project-specific unit test commands>

### Level 3: Integration Tests
<Project-specific integration test commands>

### Level 4: Manual Validation
<Feature-specific manual testing steps — API calls, UI testing, etc.>

### Level 5: Additional Validation (Optional)
<MCP servers or additional CLI tools if available>

---

## ACCEPTANCE CRITERIA
<List specific, measurable criteria that must be met for completion>
- [ ] Feature implements all specified functionality
- [ ] All validation commands pass with zero errors
- [ ] Unit test coverage meets requirements (80%+)
- [ ] Integration tests verify end-to-end workflows
- [ ] Code follows project conventions and patterns
- [ ] No regressions in existing functionality
- [ ] Documentation is updated (if applicable)
- [ ] Performance meets requirements (if applicable)
- [ ] Security considerations addressed (if applicable)

---

## COMPLETION CHECKLIST
- [ ] All tasks completed in order
- [ ] Each task validation passed immediately
- [ ] All validation commands executed successfully
- [ ] Full test suite passes (unit + integration)
- [ ] No linting or type checking errors
- [ ] Manual testing confirms feature works
- [ ] Acceptance criteria all met
- [ ] Code reviewed for quality and maintainability

---

## NOTES
<Additional context, design decisions, trade-offs, key risks, library version specifics as of the plan's creation date>
```

## Phase 6: Plan Saving
- Get the output location path for saving the implementation plan: {{input:output_path:Enter the path for saving the implementation plan}}
- Save the generated plan in markdown format to the specified `output_path` path.

## Quality Criteria

### Context Completeness ✓
- [ ] All necessary patterns identified and documented
- [ ] External library usage documented with links
- [ ] Integration points clearly mapped
- [ ] Gotchas and anti-patterns captured
- [ ] Every task has executable validation command

### Implementation Ready ✓
- [ ] Another developer could execute without additional context
- [ ] Tasks ordered by dependency (can execute top-to-bottom)
- [ ] Each task is atomic and independently testable
- [ ] Pattern references include specific file:line numbers

### Pattern Consistency ✓
- [ ] Tasks follow existing codebase conventions
- [ ] New patterns justified with clear rationale
- [ ] No reinvention of existing patterns or utils
- [ ] Testing approach matches project standards

### Information Density ✓
- [ ] No generic references (all specific and actionable)
- [ ] URLs include section anchors when applicable
- [ ] Task descriptions use codebase keywords
- [ ] Validation commands are non-interactive executable

### Zero Deduction ✓ (applies to every task in STEP-BY-STEP TASKS)
- [ ] Every CREATE task includes complete, copy-paste-ready file content (or an exact scaffolding command if tool-generated)
- [ ] Every UPDATE task includes a verbatim BEFORE block and an exact AFTER block
- [ ] Every ADD task includes a verbatim insertion anchor and exact new code
- [ ] No task contains a placeholder, a "TODO", or an instruction to "implement appropriate X" without showing X
- [ ] No task leaves an open choice between two or more valid approaches
- [ ] Every import path and API call shown has been verified to exist (not recalled from general training knowledge) when the library is unfamiliar, niche, beta, or has changed recently
- [ ] A reader could complete each task using only that task's text plus the CONTEXT REFERENCES section — no need to open the live codebase to figure out what to write

## Success Metrics

**One-Pass Implementation**: Execution agent can complete feature without additional research or clarification
**Validation Complete**: Every task has at least one working validation command
**Context Rich**: The Plan passes "No Prior Knowledge Test" — someone unfamiliar with codebase can implement using only Plan content
**Zero Deduction**: The Plan passes the "No Invention Test" — for every task, the literal code/command needed is already written in the task; the agent only needs to copy, place, and run it
**Confidence Score**: #/10 that execution will succeed on first attempt

## Report

After creating the Plan, provide:
- Summary of feature and approach
- Full path to created Plan file
- Complexity assessment
- Key implementation risks or considerations
- Estimated confidence score for one-pass success
