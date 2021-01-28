resource "aws_route53_record" "design-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "design.alpha.canada.ca"
  type    = "A"
  records = [
    "52.237.15.42"
  ]
  ttl = "300"
}

resource "aws_route53_record" "conception-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "conception.alpha.canada.ca"
  type    = "A"
  records = [
    "52.237.15.42"
  ]
  ttl = "300"
}