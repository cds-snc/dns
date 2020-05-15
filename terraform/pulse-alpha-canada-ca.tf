resource "aws_route53_record" "pulse-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "pulse.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "digital.canada.ca"
  ]
  ttl     = "300"
}

resource "aws_route53_record" "pouls-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "pouls.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "numerique.canada.ca"
  ]
  ttl     = "300"
}
