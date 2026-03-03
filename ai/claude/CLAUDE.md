# Claude Instructions

## Environment
- Windows PC running WSL for most development work — default to WSL/bash commands, not Windows/PowerShell
- Docker Desktop with WSL integration
- GitHub account: elipwns, uses SSH
- AWS default profile: `dev-workstation` (set via `AWS_DEFAULT_PROFILE` in `.bashrc`)
- AWS terraform profile: `terraform` (used for IaC work)
- Hardware: RTX 5090, AMD 9800X3D, 128GB RAM, 2.5Gbps internet — no constraints on heavy local workloads

## AWS & Infrastructure
- Prefer Terraform for AWS resource creation and management
- Prefer managed services over self-hosted solutions
- See `terraform-aws` skill for tagging, profile, and IAM rules

## Tooling
- Prefer Docker over manual environment setup for dev dependencies and services

## Coding Style
- Write clean, readable code with minimal comments — code should be self-documenting
- Use descriptive variable and function names
- Follow language-specific conventions
- Only write tests when explicitly requested
- Don't add error handling, fallbacks, or abstractions beyond what's needed

## Security
- Never include credentials, API keys, or secrets in code or commits
- Use environment variables for sensitive configuration
- Validate inputs at system boundaries (user input, external APIs)
- Follow OWASP guidelines for web applications

## Communication
- Be concise — short responses unless detail is needed
- Proactively flag when a better approach exists — newer tooling, industry standard patterns, or recent updates that simplify what's being asked. One sentence is enough; don't lecture.
- Always review plans before taking irreversible actions

## Git Workflow
- See `git-pr-workflow` skill for branching, commit, and PR conventions

## Repository Documentation Standard
- See `repo-docs-standard` skill for required files and maintenance rules

## Project Maintenance
- Remove unused imports and dependencies when deleting features
- Clean up config files when removing features
- Keep consistent folder structure across similar projects
