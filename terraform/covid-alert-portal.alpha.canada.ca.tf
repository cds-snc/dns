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

resource "aws_route53_record" "covid-alert-qr-poster-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "covid-alert-qr-poster.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-385.awsdns-48.com",
    "ns-1866.awsdns-41.co.uk",
    "ns-1226.awsdns-25.org",
    "ns-808.awsdns-37.net"
  ]
  ttl = "300"
}

resource "aws_route53_record" "alerte-covid-affiche-qr-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "alerte-covid-affiche-qr.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "covid-alert-qr-poster.alpha.canada.ca"
  ]
  ttl = "300"
}

resource "aws_route53_record" "alerte-covid-affiche-qr-alpha-canada-ca-verification-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_e0ddcd305a28712f16fb43976ceb9b69.alerte-covid-affiche-qr.alpha.canada.ca."
  type    = "CNAME"
  records = [
    "_e257e25ee755e4983d6b4a961d9a5f3d.zzxlnyslwt.acm-validations.aws."
  ]
  ttl = "300"
} 

resource "aws_route53_record" "portail-alerte-covid-alpha-canada-ca-verification-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_3ba860f222938a98267338955da3e5ca.portail-alerte-covid.alpha.canada.ca."
  type    = "CNAME"
  records = [
    "_47b1646b80bc5860253dd09b3dde5be4.jfrzftwwjs.acm-validations.aws."
  ]
  ttl = "300"
} 