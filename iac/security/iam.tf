# IAM user for lab
resource "aws_iam_user" "lab_user" {
  name = "lab-user"
  tags = { Project = "CloudSupportSim" }
}

# IAM group with read-only S3 permissions
resource "aws_iam_group" "lab_group" {
  name = "lab-readonly-group"
}

# IAM Policy: S3 Read-only
resource "aws_iam_policy" "lab_s3_readonly" {
  name        = "LabS3ReadOnly"
  description = "Read-only access to lab S3 bucket"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:GetObject", "s3:ListBucket"]
        Effect   = "Allow"
        Resource = [
          aws_s3_bucket.lab_bucket.arn,
          "${aws_s3_bucket.lab_bucket.arn}/*"
        ]
      }
    ]
  })
}

# Attach policy to group
resource "aws_iam_group_policy_attachment" "group_attach" {
  group      = aws_iam_group.lab_group.name
  policy_arn = aws_iam_policy.lab_s3_readonly.arn
}

# Add user to group
resource "aws_iam_user_group_membership" "user_group" {
  user = aws_iam_user.lab_user.name
  groups = [aws_iam_group.lab_group.name]
}
