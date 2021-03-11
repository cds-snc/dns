resource "aws_route53_record" "forms-formulaires-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "forms-formulaires.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-766.awsdns-31.net",
    "ns-1172.awsdns-18.org",
    "ns-1786.awsdns-31.co.uk",
    "ns-403.awsdns-50.com"
  ]
  ttl = "300"
}
