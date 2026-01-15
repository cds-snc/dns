resource "aws_route53_record" "cra-arc-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "cra-arc.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-369.awsdns-46.com",
    "ns-588.awsdns-09.net",
    "ns-1507.awsdns-60.org",
    "ns-1911.awsdns-46.co.uk",
  ]
  ttl = "300"
}
