---
title: Cold Email Outreach Framework
domain: sales
tags: [cold-email, b2b, lead-generation, outreach, deliverability, prospecting]
use_cases: [B2B lead generation, sales outreach, customer acquisition, scaling sales teams]
format: framework
---

# Cold Email Outreach Framework

## Core Principle
Cold email outreach is a scalable B2B lead generation system that requires technical compliance with email provider rules, precise targeting, and systematic implementation to achieve 70% open rate, 10-15% reply rate, and 1-3% lead conversion.

## Technical Infrastructure

### Multiple Domains
- Spam filters target domain + IP combination, not individual email addresses
- Purchase multiple separate domains to distribute sending volume
- Each domain appears as a different company to email providers

### Daily Sending Limits
- Maximum 100 cold emails per working day per domain
- Calculate required domains based on monthly targets
- Example: 100 leads/month requires ~3,000 companies contacted, 18,000 total emails (initial + 2 follow-ups)

### Domain Warming
- Automated systems simulate human email behavior
- Generate incoming responses, long threads, and "important" markings
- Masks high-volume outbound sending as normal business communication

### Spam Testing
- Test each domain 1-2 times weekly
- Send 10-15 test emails to spam testing service addresses
- Only use domains with 10/10 inbox delivery rate

## Prospecting Process

### Ideal Customer Profile (ICP)
- Define clear customer segments by company size, industry, role
- Identify trigger events: leadership changes, funding rounds, hiring spikes, technology adoption
- Match product value proposition to specific pain points per role (CEO vs CTO vs HR)

### Prospect Data Sources
- Use databases aggregating LinkedIn, Crunchbase, GitHub, Adzuna data
- Each prospect record includes: name, title, company, email, phone
- Recommended tool: Clay

### Email Validation
- 40% of prospect emails may be invalid without validation
- Each bounce decreases domain reputation
- Use dedicated validation services (99% accuracy) before sending
- Never send to unvalidated addresses

## Email Sending Platform Requirements

### Essential Features
- Dynamic intervals between emails (variable timing, not fixed)
- Uniform distribution throughout the day
- Custom tracking domain (own subdomain, not shared)
- Multiple IP addresses for sending
- Timezone-based sending scheduling
- Provider matching (Google-to-Google, Outlook-to-Outlook)

### Recommended Tools
- Smartlead (cold email automation)
- Avoid: MailChimp, Mailgun, Unisender (marketing platforms trigger spam filters)

## Email Copywriting

### Subject Line
- Must not appear promotional or spam-like
- Primary goal: achieve open

### First Paragraph
- State trigger event or reason for contacting this specific person
- Explain value: save money, earn money, solve urgent problem
- Role-specific messaging (CEO, shareholder, HR have different priorities)

### Format Requirements
- Plain text only, no HTML
- No tracking pixels or attachments
- Avoid spam trigger words: cash, money, insurance
- Short, direct, action-oriented

### Follow-up Sequences
- Create separate email chains per customer segment
- Typically 1 initial email + 2 follow-ups
- Each segment requires customized messaging

## Implementation Workflow

1. Define monthly lead target and required contact volume
2. Identify prospect sources and selection criteria
3. Segment prospects into 6+ categories by criteria
4. Write segment-specific email sequences
5. Extract prospects from databases
6. Find corporate email addresses
7. Validate all email addresses
8. Distribute sending across multiple domains within daily limits
9. Maintain domain warming continuously
10. Monitor spam test results daily

## Key Metrics

| Metric | Target |
|--------|--------|
| Open Rate | 70% |
| Reply Rate | 10-15% |
| Lead Conversion | 1-3% |
| Inbox Delivery | 99.9% |
| Emails per Domain/Day | ≤100 |

## Common Failure Points
- Insufficient top-of-funnel volume (hundreds vs thousands of contacts)
- Single domain sending causing spam placement
- Manual SDR approach limiting scale (5-30 leads/month per SDR)
- Using email marketing platforms instead of cold outreach tools
- Skipping email validation causing bounces
- Generic messaging without trigger-based personalization
