---
name: repo-docs-standard
description: Use when setting up a new repository or updating project documentation. Defines required and optional doc files and when to create or update them.
---

## Required in every repo
- **README.md** — human-facing, minimal. What it is, how to run it. If it's getting long, move content to a dedicated doc.
- **CLAUDE.md** — AI context. Stack, conventions, which docs exist. Use `@filename` to import existing docs rather than summarizing them.

## Create when relevant, keep up to date once they exist
- **ROADMAP.md** — future features and plans not yet built
- **DECISIONS.md** — significant architectural or tech decisions and their rationale
- **docs/** — detailed docs when a topic is too large for the above files

## Maintenance rules
- When a feature is added or a major decision is made, update whichever of these docs exist in the repo
- Suggest creating missing docs when it seems like a natural checkpoint (e.g. after a significant feature lands)
