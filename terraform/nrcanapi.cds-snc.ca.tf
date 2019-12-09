resource "aws_route53_record" "nrcanapi-cds-snc-ca-A" {
    zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
    name    = "nrcanapi.cds-snc.ca"
    type    = "A"
    records = [
        "52.237.20.235"
    ]
    ttl     = "300"

}