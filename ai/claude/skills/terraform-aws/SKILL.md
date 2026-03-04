---
name: terraform-aws
description: Use when writing or modifying Terraform for AWS resources. Covers required tagging, profile selection, IAM architecture rules, and secrets management.
---

## Profiles
- All Terraform runs use `profile = "terraform"` in the AWS provider
- `dev-workstation` = PowerUserAccess (no iam:*) — never use for Terraform
- `terraform` = AdministratorAccess — use for all IaC work

## Tagging
Always include `default_tags` in the AWS provider. Required tags:
- `ManagedBy = "Terraform"`
- `Project`
- `TerraformRepo`

See full standard: https://github.com/elipwns/dotfiles-ai/blob/main/standards/TAGGING-STANDARD.md

## IAM
- IAM roles/users go in the `aws-iam-management` repo only — never create IAM resources in other repos
- Use least privilege
- Use IAM roles over IAM users where possible

## Secrets
- Use AWS Secrets Manager — never hardcode credentials
- Never put secrets in Terraform state (use data sources or SSM/Secrets Manager references)
