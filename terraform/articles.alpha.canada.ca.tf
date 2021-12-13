resource "aws_route53_record" "articles-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "articles.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-808.awsdns-37.net",
    "ns-1030.awsdns-00.org",
    "ns-239.awsdns-29.com",
    "ns-2032.awsdns-62.co.uk"
  ]
  ttl = "300"
}