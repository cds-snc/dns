resource "aws_route53_record" "simplify-privacy-statements-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "simplify-privacy-statements.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-869.awsdns-44.net",
    "ns-161.awsdns-20.com",
    "ns-1385.awsdns-45.org",
    "ns-1862.awsdns-40.co.uk"
  ]
  ttl = "300"
}
