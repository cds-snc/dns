resource "aws_route53_record" "login-connexion-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "login-connexion.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-669.awsdns-19.net.",
    "ns-22.awsdns-02.com.",
    "ns-1237.awsdns-26.org.",
    "ns-1883.awsdns-43.co.uk.",
  ]
  ttl = "300"
}