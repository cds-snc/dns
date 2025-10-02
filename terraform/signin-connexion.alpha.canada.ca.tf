resource "aws_route53_record" "signin-connexion-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "signin-connexion.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-2035.awsdns-62.co.uk.",
    "ns-1237.awsdns-26.org.",
    "ns-997.awsdns-60.net.",
    "ns-354.awsdns-44.com.",
  ]
  ttl = "300"
}