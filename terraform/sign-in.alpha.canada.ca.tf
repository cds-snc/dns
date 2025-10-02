resource "aws_route53_record" "sign-in-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "sign-in.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-1906.awsdns-46.co.uk.",
    "ns-176.awsdns-22.com.",
    "ns-1459.awsdns-54.org.",
    "ns-824.awsdns-39.net.",
  ]
  ttl = "300"
}