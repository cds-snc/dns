resource "aws_route53_zone" "cds-snc-ca-public" {
    name       = "cds-snc.ca"
    comment    = ""

    tags {
        Project = "dns"
    }
}

output "cds-snc-ca-ns" {
  value="${aws_route53_zone.cds-snc-ca-public.name_servers}"
}