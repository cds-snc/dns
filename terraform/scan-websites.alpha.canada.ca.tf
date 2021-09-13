resource "aws_route53_record" "scan-websites-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "scan-websites.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-669.awsdns-19.net",
    "ns-1035.awsdns-01.org",
    "ns-1719.awsdns-22.co.uk",
    "ns-62.awsdns-07.com"
  ]
  ttl = "300"
}
