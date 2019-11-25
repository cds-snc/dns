resource "aws_route53_zone" "notification-canada-ca-public" {
    name       = "notification.canada.ca"
    comment    = ""

    tags = {
        Project = "dns"
    }
}

output "notification-canada-ca-ns" {
  value="${aws_route53_zone.notification-canada-ca-public.name_servers}"
}