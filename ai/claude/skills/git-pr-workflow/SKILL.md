---
name: git-pr-workflow
description: Use when committing code, creating branches, or opening pull requests. Defines branch naming, commit conventions, and PR workflow.
---

## Branching
- Always work on a branch off main — never commit directly to main
- If currently on main, create a feature branch first
- Use short, descriptive branch names (e.g. `add-venue-selector`, `fix-auth-redirect`)

## Commits
- After a meaningful batch of changes (new feature, bug fix, notable refactor), automatically make a local git commit — don't just offer, do it
- Concise commit message focused on the "why" not the "what"

## PRs
- PRs over direct merges, even for solo work
- Don't auto-push — suggest pushing or opening a PR when it's a natural checkpoint
- Use `gh pr create` with a summary body (what changed, test plan)
