resource "aws_route53_record" "performance-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "performance.alpha.canada.ca"
  type    = "A"
  records = [
    "52.237.15.42"
  ]
  ttl     = "300"
}

resource "aws_route53_record" "rendement-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "rendement.alpha.canada.ca"
  type    = "A"
  records = [
    "52.237.15.42"
  ]
  ttl     = "300"
}