resource "aws_route53_record" "resources-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "resources.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-419.awsdns-52.com",
    "ns-663.awsdns-18.net",
    "ns-1655.awsdns-14.co.uk",
    "ns-1128.awsdns-13.org"
  ]
  ttl = "300"
}

resource "aws_route53_record" "ressources-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "ressources.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-648.awsdns-17.net",
    "ns-1251.awsdns-28.org",
    "ns-101.awsdns-12.com",
    "ns-1955.awsdns-52.co.uk"
  ]
  ttl = "300"
}
