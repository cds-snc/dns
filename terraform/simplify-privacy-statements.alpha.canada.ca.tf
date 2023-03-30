resource "aws_route53_record" "simplify-privacy-statements-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "simplify-privacy-statements.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-869.awsdns-44.net",
    "ns-161.awsdns-20.com",
    "ns-1385.awsdns-45.org",
    "ns-1862.awsdns-40.co.uk"
  ]
  ttl = "300"
}

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