resource "aws_route53_record" "superset-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "superset.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-521.awsdns-01.net",
    "ns-1259.awsdns-29.org",
    "ns-1939.awsdns-50.co.uk",
    "ns-204.awsdns-25.com"
  ]
  ttl = "300"
}
