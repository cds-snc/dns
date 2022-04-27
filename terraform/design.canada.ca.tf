resource "aws_route53_record" "design-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "design.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "gallant-bassi-851d24.netlify.app"
  ]
  ttl = "300"
}

resource "aws_route53_record" "design-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "design.alpha.canada.ca"
  type    = "TXT"
  records = [
    "91447"
  ]
  ttl = "300"
}
