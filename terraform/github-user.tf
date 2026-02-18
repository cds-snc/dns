import {
  to = aws_iam_user.dns-github-deployer
  id = "dns-github-deployer"
}

resource "aws_iam_user" "dns-github-deployer" {
  name = "dns-github-deployer"
}

import {
  to = aws_iam_policy.Route53TerraformDeploy
  id = "arn:aws:iam::866996500832:policy/Route53TerraformDeploy"
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
          "acm:RequestCertificate",
          "acm:DescribeCertificate",
          "acm:DeleteCertificate",
          "acm:ListTagsForCertificate",
          "acm:AddTagsToCertificate"
        ],
        "Resource" : "arn:aws:acm:us-east-1:866996500832:certificate/*"
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "acm:ListCertificates"
        ],
        "Resource" : "*"
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "cloudfront:CreateFunction",
          "cloudfront:UpdateFunction",
          "cloudfront:DeleteFunction",
          "cloudfront:DescribeFunction",
          "cloudfront:PublishFunction",
          "cloudfront:GetFunction"
        ],
        "Resource" : "arn:aws:cloudfront::866996500832:function/cds-snc-ca-security-txt"
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "cloudfront:CreateDistribution",
          "cloudfront:GetDistribution",
          "cloudfront:GetDistributionConfig",
          "cloudfront:UpdateDistribution",
          "cloudfront:DeleteDistribution",
          "cloudfront:TagResource",
          "cloudfront:ListTagsForResource"
        ],
        "Resource" : "arn:aws:cloudfront::866996500832:distribution/*"
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "cloudfront:ListDistributions",
          "cloudfront:ListFunctions"
        ],
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
          "iam:ListAttachedRolePolicies",
          "iam:ListAttachedUserPolicies",
          "iam:UpdateAssumeRolePolicy",
          "iam:ListPolicyVersions",
          "iam:DeletePolicyVersion",
          "iam:CreatePolicyVersion"
        ],
        "Resource" : [
          "arn:aws:iam::866996500832:role/notify_prod_dns_manager",
          "arn:aws:iam::866996500832:policy/notify_prod_dns_manager_policy",
          "arn:aws:iam::866996500832:policy/Route53TerraformDeploy",
          "arn:aws:iam::866996500832:user/dns-github-deployer"
        ]
      },
      {
        "Effect" : "Allow",
        "Action" : [
          "iam:CreatePolicyVersion",
        ],
        "Resource" : [
          "arn:aws:iam::866996500832:policy/notify_prod_dns_manager_policy",
        ]
      }
    ]
  })
}

import {
  to = aws_iam_user_policy_attachment.dns-github-deployer-policy-attachment
  id = "dns-github-deployer/arn:aws:iam::866996500832:policy/Route53TerraformDeploy"
}

resource "aws_iam_user_policy_attachment" "dns-github-deployer-policy-attachment" {
  user       = "dns-github-deployer"
  policy_arn = aws_iam_policy.Route53TerraformDeploy.arn
}
