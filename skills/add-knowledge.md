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
