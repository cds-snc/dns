resource "aws_route53_record" "itap-piem-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "itap-piem.alpha-canada.ca"
  type    = "A"
  records = [
    "34.111.247.109"
  ]
  ttl = "300"
}