# Skill: Create Content and Social Media Posts from Knowledge Base

## Objective
Transform knowledge base content into engaging social media posts and content optimized for specific platforms and audiences.

---

## Input
- Knowledge base file(s) or topic
- Target platform(s): LinkedIn, Twitter/X, Instagram, etc.
- Content type: post, thread, carousel, article
- Audience: founders, sales reps, marketers, etc.

---

## Instructions

### 1. Select Source Knowledge
- Identify relevant knowledge file(s) from `/knowledge/`
- Extract core concepts, frameworks, or insights
- Note key tags and use cases for angle selection

---

### 2. Choose Content Angle
Pick one primary angle:
- **Educational**: Teach a concept/framework
- **Contrarian**: Challenge common beliefs
- **Story-driven**: Personal experience + lesson
- **Actionable**: Step-by-step guide
- **Results-focused**: Outcome + method

---

### 3. Adapt to Platform

#### Twitter/X
- Hook: 1 line, bold claim or question
- Body: 3-7 tweets or 280 chars max
- Use threads for frameworks
- Add spacing between lines
- Include CTA (follow, reply, share)

#### LinkedIn
- Hook: 1-2 lines with whitespace
- Body: 150-300 words
- Use short paragraphs (1-3 lines)
- Add personal insight or takeaway
- End with question or CTA
- 3-5 relevant hashtags

#### Instagram
- Caption: 125-150 words
- Hook in first line (before "more")
- Use emojis sparingly
- Add 5-10 hashtags
- Include CTA (save, share, comment)

#### Long-form (Articles/Newsletters)
- Title: Clear benefit or curiosity
- Intro: Problem + promise
- Body: Structured sections with headers
- Use bullet points and numbered lists
- Conclusion: Summary + next steps

---

### 4. Apply Content Structure

#### Hook Formulas (pick one)
- "Most people [common belief]. Here's why they're wrong."
- "I [achieved result] in [timeframe]. Here's how:"
- "The [number]-step framework to [desired outcome]"
- "Stop [common mistake]. Do this instead:"
- "[Number] lessons from [experience/result]"

#### Body Structure
- Problem/observation
- Insight/shift
- Solution/framework
- Proof/example (optional)
- CTA

---

### 5. Optimize for Engagement

**Do:**
- Use numbers and specifics
- Create whitespace (line breaks)
- Ask questions
- Use power words: proven, simple, exact, secret
- Add urgency or scarcity (when appropriate)

**Avoid:**
- Jargon without explanation
- Long paragraphs
- Multiple ideas in one post
- Vague claims without proof
- Over-promising

---

### 6. Add Visual Direction (if applicable)

#### Carousel
- Slide 1: Hook + title
- Slide 2-4: Core content
- Slide 5: Summary + CTA

#### Single Image
- Quote from post
- Framework diagram
- Before/after comparison

---

## Output Format

```markdown
---
source: /knowledge/<domain>/<file>.md
platform: <platform>
content_type: <post|thread|carousel|article>
angle: <educational|contrarian|story|actionable|results>
---

## Hook
[Opening line]

## Body
[Main content]

## CTA
[Call to action]

## Hashtags
#tag1 #tag2 #tag3

## Visual Notes
[Optional: image/carousel direction]
```

---

## Examples

### Example 1: Twitter Thread from PULL Framework

```markdown
---
source: /knowledge/frameworks/pull-framework.md
platform: Twitter/X
content_type: thread
angle: educational
---

## Hook
Most founders chase customers who aren't ready to buy.

Here's how to identify buyers who would be WEIRD not to purchase:

## Body
[Thread continues with framework breakdown]

## CTA
Follow for more sales frameworks

## Hashtags
#sales #startups #founders

## Visual Notes
Optional: Framework diagram as last tweet
```

---

## Rules
- One post = one core idea
- Stay true to source knowledge
- Adapt tone to platform (professional for LinkedIn, casual for Twitter)
- Never copy-paste: always transform for the medium
- Keep mobile readability in mind

---

## Validation Checklist
- [ ] Hook grabs attention in 3 seconds
- [ ] Single clear message
- [ ] Platform-appropriate length
- [ ] Whitespace for readability
- [ ] CTA included
- [ ] Source knowledge accurately represented
- [ ] No jargon without context

---

## Quick Prompts for AI Assistance

**Generate post:**
```
Create a [platform] post from [knowledge file] using [angle] angle.
Target audience: [audience]
Key takeaway: [main insight]
```

**Repurpose content:**
```
Convert this [content type] into [new platform/format]:
[paste content]
```

**Generate hooks:**
```
Write 5 hooks for a post about [topic] targeting [audience] on [platform]
```
