resource "aws_route53_record" "github-secret-scanning-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "github-secret-scanning.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-766.awsdns-31.net.",
    "ns-326.awsdns-40.com.",
    "ns-1887.awsdns-43.co.uk.",
    "ns-1348.awsdns-40.org."
  ]
  ttl = "300"
}
