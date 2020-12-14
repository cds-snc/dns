resource "aws_route53_record" "covid-alert-portal-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "covid-alert-portal.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-905.awsdns-49.net",
    "ns-29.awsdns-03.com",
    "ns-2045.awsdns-63.co.uk",
    "ns-1156.awsdns-16.org"
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