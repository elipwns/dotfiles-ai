# Claude Instructions

## Environment
- Windows PC running WSL for most development work — default to WSL/bash commands, not Windows/PowerShell
- Docker Desktop with WSL integration
- GitHub account: elipwns, uses SSH
- AWS default profile: `dev-workstation` (set via `AWS_DEFAULT_PROFILE` in `.bashrc`)
- AWS terraform profile: `terraform` (used for IaC work)

## AWS & Infrastructure
- Prefer Terraform for AWS resource creation and management
- Always use `default_tags` in the AWS provider — see [TAGGING-STANDARD.md](https://github.com/elipwns/dotfiles-ai/blob/main/standards/TAGGING-STANDARD.md)
- Required tags: `ManagedBy = "Terraform"`, `Project`, `TerraformRepo`
- Use IAM roles/users with least privilege
- Use AWS Secrets Manager for credentials, never hardcode them
- IAM changes go through the `aws-iam-management` repo via Terraform

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
- Suggest better alternatives when relevant, but don't be preachy about it
- Always review plans before taking irreversible actions
- Offer to write git commit messages

## Project Maintenance
- Update README when adding or removing features
- Remove unused imports and dependencies when deleting features
- Clean up config files when removing features
- Keep consistent folder structure across similar projects
