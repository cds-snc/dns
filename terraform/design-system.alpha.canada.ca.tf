resource "aws_route53_record" "design-system-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "design-system.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "cds-design-snc.netlify.app"
  ]
  ttl = "300"
}

resource "aws_route53_record" "systeme-design-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "systeme-design.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "cds-design-snc.netlify.app"
  ]
  ttl = "300"
}
