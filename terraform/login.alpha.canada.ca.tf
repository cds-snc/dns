resource "aws_route53_record" "login-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "login.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-349.awsdns-43.com.",
    "ns-1260.awsdns-29.org.",
    "ns-1685.awsdns-18.co.uk.",
    "ns-631.awsdns-14.net.",
  ]
  ttl = "300"
}