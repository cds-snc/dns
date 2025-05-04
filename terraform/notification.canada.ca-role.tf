# Define IAM role A with a trust policy that allows it to be assumed by terraform apply role

resource "aws_iam_role" "notify_prod_dns_manager" {
  name = "notify_prod_dns_manager"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          AWS = [
            "arn:aws:iam::296255494825:user/notification-production-tf-user",
            "arn:aws:iam::296255494825:role/notification-terraform-apply",
            "arn:aws:iam::296255494825:role/notification-terraform-plan",
            "arn:aws:sts::296255494825:assumed-role/notification-terraform-plan/NotifyTerraformPlan",
            "arn:aws:sts::866996500832:assumed-role/AWSReservedSSO_Route53-Notify-Admin_af70537e33b70fd6/ben.larabie@cds-snc.ca"

          ]
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

# Define the IAM policy
resource "aws_iam_policy" "notify_prod_dns_manager_policy" {
  name        = "notify_prod_dns_manager_policy"
  description = "Policy to manage Route53 records for notification.canada.ca hosted zone"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "route53:ListResourceRecordSets",
          "route53:ChangeResourceRecordSets",
          "route53:ListTagsForResource",
          "route53:UpdateHostedZoneComment"
        ],
        Effect   = "Allow",
        Resource = "arn:aws:route53:::hostedzone/Z1XG153PQF3VV5"
      },
      {
        Action = [
          "route53:GetChange"
        ],
        Effect   = "Allow",
        Resource = "arn:aws:route53:::change/*"
      },
      {
        Action = [
          "route53:GetHostedZone",
          "route53:ListHostedZones",
          "route53:GetHostedZoneCount",
          "route53:ListHostedZonesByName"
        ],
        Effect   = "Allow",
        Resource = "*"
      }
    ]
  })
}

# Attach the policy to the IAM role
resource "aws_iam_role_policy_attachment" "prod_dns_manager_policy_attachment" {
  role       = aws_iam_role.notify_prod_dns_manager.name
  policy_arn = aws_iam_policy.notify_prod_dns_manager_policy.arn
}
