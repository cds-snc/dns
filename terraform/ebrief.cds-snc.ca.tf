resource "aws_route53_record" "ebrief-cds-snc-ca-A" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "brief-bref.cds-snc.ca"
  type    = "A"
  records = [
    "40.86.217.175"
  ]
  ttl = "300"

}