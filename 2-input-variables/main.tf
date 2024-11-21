resource "aws_iam_policy" "policy_string" {
  name = "policy-string"
  path = "/"
  description = var.policy_description

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action = [
          "s3:ListAllMyBuckets",
        ]
        Resource = "*"
      },
    ]
  })

  tags = {
    Creator = "terraform"
  }
}