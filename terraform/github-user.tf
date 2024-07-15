variable "iam_user_tag_key" {
  description = "The tag key for the dns-github-deployer iam user"
  type        = string
  sensitive   = true
}

resource "aws_iam_user" "dns-github-deployer" {
  name = "dns-github-deployer"

  tags = {
    "${var.iam_user_tag_key}" = "cds-snc/digital-canada-ca GitHub actions"
  }
}

resource "aws_iam_policy" "Route53TerraformDeploy" {
  name        = "Route53TerraformDeploy"
  description = "Provides admin access to Route53 and limited access to the S3 Terraform state bucket."
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "route53:*"
        ],
        "Effect" : "Allow",
        "Resource" : "*"
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:ListBucket"
        ],
        "Resource" : [
          "arn:aws:s3:::cds-dns-terraform-state"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:PutObject",
          "s3:GetObject",
          "s3:DeleteObject"
        ],
        "Resource" : [
          "arn:aws:s3:::cds-dns-terraform-state/*"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "iam:GetUser",
          "iam:GetRole",
          "iam:GetPolicy"
        ],
        "Resource" : [
          "arn:aws:iam:::role/notify_prod_dns_manager",
          "arn:aws:iam:::policy/notify_prod_dns_manager_policy"
        ]
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "dns_github_deployer_policy_attachment" {
  user       = "dns-github-deployer"
  policy_arn = aws_iam_policy.Route53TerraformDeploy.arn
}
