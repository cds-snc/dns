resource "aws_route53_record" "url-shortener-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "url-shortener.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-1259.awsdns-29.org",
    "ns-720.awsdns-26.net",
    "ns-1942.awsdns-50.co.uk",
    "ns-8.awsdns-01.com"
  ]
  ttl = "300"
}
