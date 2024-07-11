# Define IAM role A with a trust policy that allows it to be assumed by terraform apply oidc role
resource "aws_iam_role" "prod_dns_manager" {
  name = "notify_prod_dns_manager"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          AWS = "arn:aws:iam::296255494825:role/notification-terraform-apply"
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
          "route53:GetChange"
        ],
        Effect   = "Allow",
        Resource = "arn:aws:route53:::hostedzone/Z1XG153PQF3VV5"
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
