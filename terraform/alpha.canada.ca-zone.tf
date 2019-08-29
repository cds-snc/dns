resource "aws_route53_zone" "alpha-canada-ca-public" {
    name       = "alpha.canada.ca"
    comment    = ""

    tags = {
        Project = "dns"
    }
}

output "alpha-canada-ca-ns" {
  value="${aws_route53_zone.alpha-canada-ca-public.name_servers}"
}

resource "aws_route53_record" "alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "alpha.canada.ca"
    type    = "CNAME"
    records = [
        "alpha-canada-ca.github.io"
    ]
    ttl     = "300"

}
