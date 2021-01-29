resource "aws_route53_record" "privacy-statements-cds-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "privacy-statements.cds.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "radiant-damselfly-fxzk8vc81qdj2jzmuog6ncda.herokudns.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "avis-confidentialite-snc-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "avis-confidentialite.snc.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "behavioural-scallop-nlrxwf5edg8eivh9qeu0ai9p.herokudns.com"
  ]
  ttl = "300"
}
