resource "aws_route53_zone" "service-canada-ca-public" {
    name       = "service.canada.ca"
    comment    = ""

    tags = {
        Project = "dns"
    }
}

output "service-canada-ca-ns" {
  value="${aws_route53_zone.service-canada-ca-public.name_servers}"
}