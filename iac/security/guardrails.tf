# Example: Ensure EC2 instances cannot have public IP if flagged
resource "aws_vpc" "lab_vpc_guardrail" {
  cidr_block = "10.1.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = { Name = "lab-vpc-guardrail" }
}

# Example Guardrail Tag Policy (conceptual)
resource "aws_iam_policy" "tagging_policy" {
  name   = "EC2TaggingGuardrail"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "DenyUntaggedEC2"
        Effect = "Deny"
        Action = ["ec2:RunInstances"]
        Resource = "*"
        Condition = {
          Null = {
            "aws:RequestTag/Project" = "true"
          }
        }
      }
    ]
  })
}
