resource "aws_route53_record" "micro-acquisition-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "micro-acquisition.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "canada-ca.github.io"
    ]
    ttl     = "300"
}