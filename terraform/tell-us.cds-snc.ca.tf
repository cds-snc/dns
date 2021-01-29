resource "aws_route53_record" "tell-us-cds-snc-ca-A" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "tell-us.cds-snc.ca"
  type    = "A"
  records = [
    "35.203.57.200"
  ]
  ttl = "300"

}

resource "aws_route53_record" "racontez-nous-cds-snc-ca-A" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "racontez-nous.cds-snc.ca"
  type    = "A"
  records = [
    "35.203.57.200"
  ]
  ttl = "300"

}