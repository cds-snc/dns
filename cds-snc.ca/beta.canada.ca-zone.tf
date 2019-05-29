resource "aws_route53_zone" "beta-canada-ca-public" {
    name       = "beta.canada.ca"
    comment    = ""

    tags = {
        Project = "dns"
    }
}

output "beta-canada-ca-ns" {
  value="${aws_route53_zone.beta-canada-ca-public.name_servers}"
}
