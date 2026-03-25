# Skill: Add Knowledge to Repository

## Objective
Ingest external content and convert it into a structured, LLM-optimized knowledge file inside the repository.

---

## Input
- URL or raw text content

---

## Instructions

### 1. Read and Understand
- Access the provided content
- Identify the core concept
- Ignore irrelevant or repetitive parts

---

### 2. Extract Core Knowledge
- Identify:
  - Main idea
  - Key steps / framework
  - Supporting details (only if necessary)

---

### 3. Compress for LLM
- Remove fluff, examples, storytelling
- Keep only high-signal information
- Convert into:
  - bullet points
  - short sections
- Ensure high information density

---

### 4. Determine Metadata

#### title
- Clear and specific concept name

#### domain
- One of:
  - sales
  - marketing
  - copywriting
  - frameworks

#### tags
- 3–6 relevant keywords

#### use_cases
- Practical applications

#### format
- One of:
  - framework
  - guide
  - checklist
  - script

---

### 5. Select Location
Place file in:

/knowledge/<domain>/

---

### 6. File Naming
- lowercase
- hyphen-separated

Example:

cold-email-framework.md

---

### 7. Output Format

```markdown
---
title: ...
domain: ...
tags: [...]
use_cases: [...]
format: ...
---

# Title

## Section
- Point
- Point
```

---

### 8. Update Knowledge Index (Required)

After creating a new knowledge file:

- Open /knowledge/index.md
- Add a new entry under the correct domain section

Entry format:

### <Title>
- Path: /knowledge/<domain>/<filename>.md
- Tags: tag1, tag2, tag3
- Summary: 1-line description

Rules:
- Keep alphabetical order within the domain
- Do not duplicate entries
- Ensure formatting matches existing index

---

## Rules
- One file = one concept
- No duplication of existing knowledge
- Keep concise
- Optimize for reuse in prompts

---

## Validation Checklist
- [ ] Metadata present
- [ ] Correct domain
- [ ] Clear structure
- [ ] No fluff
- [ ] File placed correctly

---

## For Outer Collaborators

If you're not a direct repository contributor, follow this workflow:

### 1. Fork the Repository
```bash
gh repo fork --clone
```

### 2. Create a Branch
```bash
git checkout -b add/<knowledge-topic>
# Example: git checkout -b add/cold-email-framework
```

### 3. Make Changes
- Add your knowledge file following the format above
- Update `/knowledge/index.md` with your entry

### 4. Commit and Push
```bash
git add .
git commit -m "Add <knowledge-topic>"
git push origin <branch-name>
```

### 5. Open a Pull Request
```bash
gh pr create --title "Add <knowledge-topic>" --body "Description of the knowledge being added"
```
