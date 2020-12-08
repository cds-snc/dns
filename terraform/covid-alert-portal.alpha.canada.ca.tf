resource "aws_route53_record" "covid-alert-portal-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "covid-alert-portal.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-1714.awsdns-22.co.uk",
    "ns-93.awsdns-11.com",
    "ns-1334.awsdns-38.org",
    "ns-842.awsdns-41.net"
  ]
  ttl = "300"
}

resource "aws_route53_record" "portail-alerte-covid-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "portail-alerte-covid.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "covid-alert-portal.alpha.canada.ca"
  ]
  ttl = "300"
}