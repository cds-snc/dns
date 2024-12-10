resource "aws_route53_record" "superset-cds-snc-ca-NS" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "superset.cds-snc.ca"
  type    = "NS"
  records = [
    "ns-900.awsdns-48.net",
    "ns-1806.awsdns-33.co.uk",
    "ns-283.awsdns-35.com",
    "ns-1176.awsdns-19.org"
  ]
  ttl = "300"
}
