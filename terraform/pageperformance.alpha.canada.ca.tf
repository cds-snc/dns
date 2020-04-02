resource "aws_route53_record" "pageperformance-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "pageperformance.alpha.canada.ca"
  type    = "A"
  records = [
    "52.237.15.42"
  ]
  ttl     = "300"
}