resource "aws_route53_record" "connexion-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "connexion.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-546.awsdns-04.net.",
    "ns-1844.awsdns-38.co.uk.",
    "ns-447.awsdns-55.com.",
    "ns-1404.awsdns-47.org.",
  ]
  ttl = "300"
}