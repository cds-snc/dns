resource "aws_route53_zone" "alpha-canada-ca-public" {
    name       = "alpha.canada.ca"
    comment    = ""

    tags {
        Project = "dns"
    }
}

output "alpha-canada-ca-ns" {
  value="${aws_route53_zone.alpha-canada-ca-public.name_servers}"
}
