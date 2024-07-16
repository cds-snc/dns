variable "iam_user_tag_key" {
  description = "The tag key for the dns-github-deployer iam user"
  type        = string
  sensitive   = true
}

resource "aws_iam_user" "dns-github-deployer" {
  name = "dns-github-deployer"
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
          "iam:ListRolePolicies",
          "iam:GetPolicyVersion",
          "iam:GetPolicy",
          "iam:ListAttachedRolePolicies"
        ],
        "Resource" : [
          "arn:aws:iam::866996500832:role/notify_prod_dns_manager",
          "arn:aws:iam::866996500832:policy/notify_prod_dns_manager_policy",
          "arn:aws:iam::866996500832:policy/Route53TerraformDeploy",
          "arn:aws:iam::866996500832:user/dns-github-deployer"
        ]
      }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "dns_github_deployer_policy_attachment" {
  user       = "dns-github-deployer"
  policy_arn = aws_iam_policy.Route53TerraformDeploy.arn
}

import {
  to = aws_iam_user.dns-github-deployer
  id = "dns-github-deployer"

}
import {
  to = aws_iam_policy.Route53TerraformDeploy
  id = "arn:aws:iam::866996500832:policy/Route53TerraformDeploy"
}

import {
  to = aws_iam_role_policy_attachment.dns_github_deployer_policy_attachment
  id = "arn:aws:iam::866996500832:policy/Route53TerraformDeploy"
}
