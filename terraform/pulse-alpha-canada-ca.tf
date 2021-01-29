resource "aws_route53_record" "pulse-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "pulse.alpha.canada.ca"
  type    = "A"
  records = [
    "34.95.5.243"
  ]
  ttl = "300"
}

resource "aws_route53_record" "pouls-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "pouls.alpha.canada.ca"
  type    = "A"
  records = [
    "34.95.5.243"
  ]
  ttl = "300"
}
