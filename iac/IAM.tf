# IAM Roles, Policies, and Users

resource "aws_iam_user" "lab_user" {
  name = "lab-user"
  tags = { Project = "CloudSupportSim" }
}

resource "aws_iam_policy" "lab_policy" {
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

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.lab_user.name
  policy_arn = aws_iam_policy.lab_policy.arn
}
