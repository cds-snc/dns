resource "aws_route53_record" "workplace-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "workplace.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "dev-rtw.powerappsportals.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "milieu-travail-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "milieu-travail.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "dev-rtw.powerappsportals.com"
  ]
  ttl = "300"
}
