resource "aws_route53_record" "performance-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "performance.alpha.canada.ca"
  type    = "A"
  records = [
    "20.220.167.149"
  ]
  ttl = "300"
}

resource "aws_route53_record" "rendement-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "rendement.alpha.canada.ca"
  type    = "A"
  records = [
    "20.220.167.149"
  ]
  ttl = "300"
}
