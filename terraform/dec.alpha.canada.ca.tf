resource "aws_route53_record" "dec-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "dec.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-1030.awsdns-00.org",
    "ns-8.awsdns-01.com",
    "ns-1885.awsdns-43.co.uk",
    "ns-892.awsdns-47.net"
  ]
  ttl = "300"
}