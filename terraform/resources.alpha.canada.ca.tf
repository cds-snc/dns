resource "aws_route53_record" "resources-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "resources.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "cds-snc.github.io"
  ]
  ttl = "1800"
}

resource "aws_route53_record" "ressources-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "ressources.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "cds-snc.github.io"
  ]
  ttl = "1800"
}
