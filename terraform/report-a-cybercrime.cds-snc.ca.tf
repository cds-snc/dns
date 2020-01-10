resource "aws_route53_record" "report-a-cybercrime-cds-snc-ca-A" {
    zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
    name    = "report-a-cybercrime.cds-snc.ca"
    type    = "A"
    records = [
      "13.71.170.130"
    ]
    ttl     = "300"

}
