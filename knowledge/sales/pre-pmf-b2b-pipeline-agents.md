---
title: Pre-PMF B2B Sales Pipeline (Agent Input-Output Pairs)
domain: sales
tags: [pre-pmf, pipeline, agents, pull-framework, founder-magic, demand-validation, sales-sprint, cold-email, calendar-booking]
use_cases: [early-stage sales automation, building AI sales agents, pre-PMF pipeline generation, demand validation workflows, cold email outreach, meeting booking]
format: framework
---

# Pre-PMF B2B Sales Pipeline — Agent Input-Output Pairs

Designed for early-stage B2B startups with a **hypothetical PMF**: the founder has a product hypothesis and an assumed ICP but has not yet validated repeatable demand. This document defines a 10-step agent pipeline; inputs/outputs chain sequentially.

> **Pre-PMF constraint:** No proven pull equation yet. Goal of this pipeline is to find and validate it — not scale a known one. Use Founder Magic (weird, personal, non-scalable) not Toll Booth (scalable, ROI-driven).

---

## Stage 1 — Brief → PULL Hypothesis

**Agent:** Brief Decoder

**Input:** Founder brief containing:
- Product / solution description (1–3 sentences)
- Problem they believe they're solving
- Who they think the customer is (rough target)
- Any early observations, conversations, or signals

**Output:**
- PULL Hypothesis Card:
  - **P (Project):** Specific project the hypothetical customer has on their to-do list
  - **U (Urgency):** Why this project is urgent *right now* (not someday)
  - **L (List):** Options the customer is currently considering (competitors, DIY, hire, ignore)
  - **L (Limitations):** Why each option fails (specific, not generic)
- ICP Hypothesis: 2–3 sentence description of who would be "weird not to buy" — stage, role, situation, trigger event
- PULL type: Coping (actively struggling) or Blocked (inactive, waiting for viable path)
- Confidence flag: `hypothesis` / `observed` / `validated`

**Source frameworks:** PULL Framework, Blocked or Coping, Ideal Client Profile Reframe

---

## Stage 2 — PULL Hypothesis → ICP Search Criteria

**Agent:** ICP Translator

**Input:** PULL Hypothesis Card from Stage 1

**Output:**
- Firmographic filters:
  - Industry / vertical (specific, not broad)
  - Company size by headcount and revenue range
  - Stage (seed / Series A / etc.) if relevant
  - Geography constraints if any
- Technographic / behavioral filters:
  - Tools they're currently using (as listed in L — List)
  - Job titles of both economic buyer and end user
  - Department structure signals
- Trigger / situation filters (maps to U — Urgency):
  - Events that create urgency (new hire, funding round, regulation, competitor move, expansion)
  - Situations that make the Blocked/Coping state visible
- Exclusion criteria:
  - Satisfied customers (adequate current solution)
  - Backlog customers (not prioritizing now)

**Source frameworks:** PULL Framework, ICP Reframe, Intent Signals Framework

---

## Stage 3 — ICP Criteria + Signals → Prospect List

**Agent:** Signal-Based Prospector

**Input:**
- ICP search criteria from Stage 2
- Intent signal strength ratings (High / Medium-High / Medium)

**Output:**
- Prospect list, each entry containing:
  - Company name, size, industry
  - Contact name, title, LinkedIn URL
  - Signal(s) observed and signal strength (★ / ★★ / ★★★)
  - Urgency trigger identified (maps to U)
  - Current tool / approach identified (maps to L — List)
  - PULL type inferred: Coping or Blocked
- Prioritization tier:
  - **Tier 1 (★★★):** Active signals — book call immediately
  - **Tier 2 (★★):** Behavioral change signals — warm outreach
  - **Tier 3 (★):** Contextual signals — nurture or monitor
- Recommended outreach channel per prospect (email vs. LinkedIn vs. direct)

**Source frameworks:** Intent Signals Framework, ICP Reframe, Allbound Outreach Framework

---

## Stage 4 — Prospect Profile → Founder Magic Outreach

**Agent:** Outreach Writer (Founder Magic Mode)

**Input:**
- Single prospect record from Stage 3, including:
  - company, contact, role, and recommended outreach channel
  - freshest signal(s) with date and source
  - urgency trigger observed
  - current tool / approach identified
  - inferred PULL type: Coping / Blocked / Coping (urgency-amplified)
  - tier, contact notes, and Goblin Mode eligibility
- PULL Hypothesis Card from Stage 1
- Founder identity packet:
  - founder name, role, and company
  - relevant background, obsession, or weirdness to leverage
  - one honest reason the conversation is different from generic outbound
  - any concrete artifact they can offer (teardown, observation, benchmark, list)

**Output:**
- Founder Magic Outreach Package:
  - Message strategy:
    - primary signal anchor
    - emotional frame based on PULL type
    - founder angle selected
    - CTA type matched to channel
  - Primary outreach asset:
    - **Email:** subject + plain-text body with a single CTA and `[CALENDAR_URL]` placeholder when booking is the ask
    - **LinkedIn DM:** low-key message that sells the conversation, not the product
    - **LinkedIn connection:** empty request preferred; pitch only after acceptance
  - One follow-up variant:
    - sent 3-5 days later
    - different angle, not a bump
    - same single-CTA discipline
  - Execution mode:
    - `email_ready` when Stage 5 can send immediately
    - `manual_channel_only` when the first touch is LinkedIn-first
    - `nurture_only` when signal strength is too weak for direct outreach
  - QA / routing flags:
    - tone flag: `personal-founder`
    - approach flag: `standard-founder-magic` / `goblin-mode-available` / `nurture-only`
    - evidence note: exact signal used for personalization

**Rules enforced:**
- One real signal, one founder angle, one CTA
- Sell the conversation, not the product, deck, or demo
- No ROI claims, case-study flexing, or broad platform pitch
- No fake personalization, generic compliments, or speculative claims
- No pitch in the first LinkedIn connection request
- Tier 3 or weak-signal prospects route to nurture, not direct outreach

**Source frameworks:** Pipeline Mega Post (Founder Magic), Allbound Outreach Framework, Buyer-Pull vs Seller-Push, Cold Email Outreach Framework

---

## Stage 5 — Email Sequence → Calendar Booked

**Agent:** Email Sequence Executor + Booking Handler

**Input:**
- Email sequence from Stage 4 (initial message + follow-up variants)
- Prospect record: name, validated email address, company, tier (★/★★/★★★), timezone
- Calendar booking URL (Google Calendar meeting booking page)
- Sending configuration: pool of available outreach domains, daily per-domain sending limit

**Output:**

**Pre-send validation checklist** (must all pass before any email is sent):
- Email address validated — zero bounce risk confirmed
- Sending domain spam score: 10/10 inbox delivery required (test 10–15 addresses before first use)
- Spam trigger word scan: no cash, money, insurance, promotional language, HTML elements
- Plain text only confirmed — no tracking pixels, no attachments, no redirect links
- Calendar URL appears verbatim in every email in the sequence (not only the last)
- Domain warming active on assigned domain

**Scheduled send plan per prospect:**
- Email 1 (Initial): Day 0 — send 9–11am in prospect's timezone
- Email 2 (Follow-up 1): Day 4–5 — different send time within business hours
- Email 3 (Follow-up 2): Day 9–11 — final attempt before routing decision
- Domain assignment: rotated from outreach domain pool — never primary company domain
- Provider match enforced: Google Workspace → Google recipient, Outlook → Outlook recipient
- Dynamic send intervals: variable timing between emails (not fixed schedule)
- Daily volume cap: ≤100 outbound emails per domain per day

**CTA construction** (applied to every email in sequence):
- Text: low-friction, time-boxed framing — e.g., "Worth a 15-min call? Pick a time: [CALENDAR_URL]"
- Calendar URL embedded directly — no redirects, no landing page
- No fake urgency, no pressure language, no countdown framing
- One CTA per email only — no secondary asks

**Response routing:**
- **Booked** (calendar link clicked + confirmed): → trigger Stage 6 (Call Prep Builder) immediately with prospect profile + outreach thread context
- **Replied, not booked**: → pause sequence; route to manual handling — reply with direct calendar URL and single sentence acknowledging their response
- **No response after Email 3** (Tier 1 ★★★): → flag `Goblin Mode` — assess non-scalable escalation (direct message, physical touch, warm intro via advisor)
- **No response after Email 3** (Tier 2–3 ★★): → mark `Nurture`; add to LinkedIn content audience; do not continue email sequence
- **Unsubscribe / negative reply**: → immediately halt sequence; log in CRM as `Disqualify`; do not re-engage

**Sequence performance log** (evaluated per ICP segment batch, not per individual):
- Open rate: target ≥70% — if <50%, rewrite subject line before next batch
- Reply rate: target 10–15% — if <5%, rewrite first paragraph trigger event reference
- Book rate: meetings booked per reply — track separately from reply rate
- Lead conversion: target 1–3% of total contacted
- Segment flag: if a full segment (6+ prospects) returns 0 replies, escalate to Stage 9 (Sprint Analyst) for ICP re-evaluation

**Rules enforced:**
- Never send from primary company domain
- Domain warming must be active throughout the entire sequence, not only during setup
- Spam test every domain 1–2× per week; suspend any domain below 10/10
- Sequence is selling the *conversation* (calendar booking), not the product — no ROI claims, no product pitch in any email

**Source frameworks:** Cold Email Outreach Framework, Pipeline Mega Post (Founder Magic), Allbound Outreach Framework

---

## Stage 6 — Accepted Meeting → Discovery Call Guide

**Agent:** Call Prep Builder

**Input:**
- Prospect profile (signals, tier, inferred PULL type)
- PULL Hypothesis Card from Stage 1
- Any context from outreach thread (what they responded to)

**Output:**
- Call objective: validate or falsify the PULL hypothesis for this prospect
- Discovery question set (PULL framework):
  - **P:** "What are you trying to accomplish this quarter?" / "What does success look like for this project?"
  - **U:** "Why is this a priority now vs. 6 months ago?" / "What happens if this doesn't get solved?"
  - **L:** "What have you tried or considered?" / "What's your current approach?"
  - **L:** "What's not working about those options?" / "What would make you stick with them?"
- Fallback questions if PULL doesn't surface:
  - "What would you pay me to solve that you currently cannot?"
  - "Walk me through your week — where do you feel most stuck?"
- Customer language decoder reminders:
  - Trust: goals and outcomes
  - Trust selectively: complaints about current tools
  - Do NOT trust: feature requests, stated solution preferences
- Early exit trigger: if no PULL surfaces in first 10 minutes, end gracefully — no pitch
- Transition checkpoint: restate (Goal + Urgency + Failed options) before moving to supply

**Source frameworks:** B2B Sales Call Script, Customer Language 101, PULL Framework, Buyer-Pull vs Seller-Push, Three Sales Pathologies

---

## Stage 7 — Call Notes → PULL Validation Score

**Agent:** Demand Validator

**Input:**
- Raw call notes or transcript
- PULL Hypothesis Card from Stage 1
- Original inferred PULL type (Coping / Blocked)

**Output:**
- PULL scorecard per element:
  - P: Was a specific project identified? (yes / partial / no)
  - U: Was urgency confirmed? What is the forcing function?
  - L: What alternatives were actually named?
  - L: Were limitations real and specific (not vague complaints)?
- PULL type confirmation: Coping / Blocked / Neither / Unclear
- Demand vs. supply separation:
  - Demand signals extracted (goals, outcomes, urgency)
  - Supply signals extracted (tool names, feature requests) — flagged but not acted on
  - Noise filtered (vague frustrations, wishful thinking)
- Pathology flags (if any):
  - `Helpful`: agent gave advice instead of extracting PULL
  - `Smart`: agent showed off product knowledge too early
  - `Noble`: agent avoided pushing on urgency out of politeness
- Purchase energy signal:
  - `Dam burst`: "OMG how do I start" — validated PULL, strong buyer pull
  - `Mild interest`: "Could be useful" — insufficient tension, do not advance
  - `No signal`: PULL absent for this prospect
- Outcome verdict: `Advance` / `Nurture` / `Disqualify` / `Iterate ICP`

**Source frameworks:** Blocked or Coping, Customer Language 101, Three Sales Pathologies, PULL Framework

---

## Stage 8 — Validated PULL → Supply Positioning

**Agent:** Positioning Fitter

**Input:**
- PULL scorecard from Stage 6 (Advance verdict only)
- Product description / capabilities
- Prospect's specific P, U, L, L filled out

**Output:**
- Product concept statement (30–60 seconds):
  - Opens with their demand (project + urgency) — not product history
  - Names the specific limitation of their current option
  - Positions product as the narrow fit for their exact situation
  - No broad capabilities, no roadmap, no vision
- Demo / walkthrough script (if live call):
  - Show only what addresses their specific PULL
  - Duration: 30–60 seconds of screen time
  - Show outcome/output first, not feature flow
  - Fit check after every step: "Is this what you expected?"
- Objection map:
  - Anticipated objection → reframe using their own PULL language
- Fit check questions:
  - "Does this match what you need?"
  - "What would make this a no-brainer vs. a maybe?"

**Source frameworks:** Buyer-Pull vs Seller-Push, B2B Sales Call Script, How to Describe Your Product Quickly

---

## Stage 9 — Sprint Outcomes → ICP Iteration

**Agent:** Sprint Analyst

**Input:**
- PULL scorecards from Stage 6 for 3–8 calls (one sprint)
- Outreach response rates from Stage 4
- Outcome verdicts per call

**Output:**
- Sprint summary:
  - Total calls: N
  - PULL confirmed: N (with Coping vs. Blocked breakdown)
  - Dam burst signals: N
  - Disqualified: N (with reason: no urgency / wrong ICP / no limitations on alternatives)
- Pattern analysis:
  - Which P (project type) appeared most consistently?
  - Which U (urgency trigger) was most reliable?
  - Which L (limitations) resonated as real blockers?
  - What demographic/firmographic traits correlated with PULL confirmed?
- PULL hypothesis status: `Validated` / `Partially validated` / `Pivoting`
- ICP refinement:
  - Tighten or expand one dimension (e.g., company size, trigger event, role)
  - Discard segments with 0 dam burst signals
- Go/No-Go verdict for next sprint:
  - `Run another sprint` → with refined hypothesis
  - `Move to Toll Booth prep` → if 5+ repeatable PULL customers confirmed
  - `Pivot product hypothesis` → if <2 PULL confirmations across sprint

**Source frameworks:** Sales Sprint for 0-1 Sales, Pipeline Mega Post, Blocked or Coping, Exponential Pull

---

## Stage 10 — Confirmed PULL Prospect → Deal Advancement Plan

**Agent:** Deal Closer (PULL Project Manager)

**Input:**
- Validated PULL scorecard (Stage 6, Advance verdict)
- Product positioning from Stage 7
- Prospect's role, organizational context, decision-making process (from call)

**Output:**
- Minimum buying steps — only what *they* need to do/see to decide:
  - List each step the champion must take internally
  - Remove any step that is for the seller's benefit, not theirs
- Stakeholder map:
  - Names/roles of other people who need to be involved
  - What each stakeholder needs to see (aligned to their PULL, not generic)
- Next step script (for end of call or follow-up):
  - "Based on what you told me, the next step I'd suggest is X — does that match what you need internally?"
  - Own the logistics: draft the internal email, schedule the next call, send the summary
- Follow-up sequence:
  - T+0: Summary email (their PULL restated, fit confirmed, next step outlined)
  - T+3: Remove friction (draft their internal email/proposal if needed)
  - T+7: Check-in if no response — reference their urgency trigger (U)
- Success definition: completion of their specific project, not product adoption metrics

**Source frameworks:** Buyer-Pull vs Seller-Push (Call 2 to Close), B2B Sales Call Script, Three Sales Pathologies

---

## Pipeline Flow Summary

```
Client Brief
  ↓ [Agent 1: Brief Decoder]
PULL Hypothesis Card
  ↓ [Agent 2: ICP Translator]
ICP Search Criteria
  ↓ [Agent 3: Signal-Based Prospector]
Tiered Prospect List
  ↓ [Agent 4: Outreach Writer]
Personalized Founder Magic Messages
  ↓ [Agent 5: Email Sequence Executor]
Email Sequence → Validated, Scheduled, Sent
     ↓ booked            ↓ no response (Tier 1)    ↓ no response (Tier 2–3)
  [Agent 6]           Goblin Mode Flag              Nurture / LinkedIn audience
  Call Prep Builder   ← triggered on calendar confirmed
Discovery Call Guide
  ↓ [Agent 7: Demand Validator]           ← triggered on call notes submitted
PULL Scorecard + Outcome Verdict
  ↓                    ↓
[Agent 8]            [Agent 9]
Positioning Fitter   Sprint Analyst         ← runs after 3–8 calls
  ↓                      ↓
Supply Pitch         ICP Iteration
  ↓
[Agent 10: Deal Closer]
Deal Advancement Plan
```

## Pre-PMF Rules Enforced Across All Agents

1. **No ROI claims** until PULL is validated in calls (Stage 6)
2. **No scalable playbooks** — Founder Magic until 5+ validated PULL customers
3. **Sell the conversation**, not the product (Stages 4–5)
4. **5 calls = 1 sprint** — do not scale outreach before sprint analysis (Stage 9)
5. **Disqualify early** — if no PULL in first 10 min of call, exit; do not pitch
6. **Demand over supply** — never act on feature requests; act only on validated P+U
7. **Transition signal** — move to Toll Booth only when Stage 9 returns `Move to Toll Booth prep`
