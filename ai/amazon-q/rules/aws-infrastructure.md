# AWS Infrastructure Rules

## Infrastructure as Code
- Suggest Terraform for major AWS resource creation and management
- Organize Terraform files by environment or service
- Include terraform.tfvars.example for required variables
- Use remote state storage (S3 + DynamoDB) for shared projects

## AWS Best Practices
- Use IAM roles with least privilege principle
- Tag all resources consistently for cost tracking
- Prefer managed services over self-hosted when possible
- Use AWS Secrets Manager for sensitive configuration
