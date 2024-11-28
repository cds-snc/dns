resource "aws_route53_record" "gciv-dvgc-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "gciv-dvgc.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-324.awsdns-40.com",
    "ns-1309.awsdns-35.org",
    "ns-796.awsdns-35.net",
    "ns-1876.awsdns-42.co.uk"
  ]
  ttl = "300"
}