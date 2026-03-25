# Marketing Knowledge Base

This repository contains a structured knowledge base designed for use with AI systems, agents, and prompt-based workflows.

## Purpose
- Serve as a source of truth for marketing, sales, and growth knowledge
- Provide reusable, LLM-optimized content
- Enable modular usage across tools, chats, and APIs

## Structure

### /knowledge
Core structured knowledge, organized by domain.
- sales/
- marketing/
- copywriting/
- frameworks/

Each file:
- Covers one concept
- Is self-contained
- Includes metadata for retrieval and reuse

### /modules
Optional extracted modules for direct prompt insertion.

### /compressed
Highly condensed versions of the knowledge base for direct use in chats.

### /skills
Agent behaviors, instructions, and prompt logic.

## Usage

### For humans
Navigate by domain and topic.

### For AI / prompts
- Use individual files as modular context
- Combine multiple files when needed
- Prefer compressed versions when context size is limited

## Design Principles
- Atomic knowledge units
- High information density
- Minimal redundancy
- Optimized for LLM consumption