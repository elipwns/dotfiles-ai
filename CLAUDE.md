# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose

This repo centralizes AI tool configurations, coding standards, and development practices for use across projects. It's designed to be added as a git submodule and symlinked into other repos.

## Structure

- `ai/claude/` — Claude Code instructions (`CLAUDE.md`) and reusable skills
- `ai/amazon-q/rules/` — Amazon Q development rules (6 markdown files)
- `ai/copilot/` — GitHub Copilot instructions (template)
- `ai/gemini/` — Gemini instructions (template)
- `standards/` — Shared standards (AWS tagging, etc.)
- `scripts/` — MCP server setup scripts and Claude Desktop config examples

## Key Files

- `ai/claude/CLAUDE.md` — The primary Claude instructions file; changes here propagate to any project that symlinks it
- `ai/claude/skills/` — Custom Claude skills for git workflow, repo docs, and Terraform/AWS
- `standards/TAGGING-STANDARD.md` — AWS Terraform tagging standard referenced by the terraform-aws skill
- `scripts/setup-mcp.sh` — Sets up Docker MCP Gateway and Bambu 3D printer MCP servers
- `scripts/claude_desktop_config.example.json` — Template for Claude Desktop MCP config (real config is gitignored)

## Submodule Usage

```bash
git submodule add git@github.com:elipwns/dotfiles-ai.git .dotfiles-ai
ln -s .dotfiles-ai/ai/claude/CLAUDE.md CLAUDE.md
```

## Skills

The three Claude skills in `ai/claude/skills/` are loaded into the global Claude config and available in all projects:
- `git-pr-workflow` — Branch naming, commit conventions, PR workflow
- `repo-docs-standard` — Required documentation files (README, CLAUDE.md, ROADMAP, DECISIONS)
- `terraform-aws` — Terraform/AWS best practices, profiles, tagging, IAM rules

## Credentials

`scripts/claude_desktop_config.json` (real config with Bambu printer credentials) is gitignored. Use `scripts/claude_desktop_config.example.json` as the template.
