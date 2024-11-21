resource "aws_iam_policy" "policy" {
  name        = "my-first-policy"
  description = "My first created policy with terraform"

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