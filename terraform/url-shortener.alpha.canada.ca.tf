resource "aws_route53_record" "url-shortener-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "o.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-1053.awsdns-03.org.",
    "ns-1594.awsdns-07.co.uk.",
    "ns-308.awsdns-38.com.",
    "ns-788.awsdns-34.net."
  ]
  ttl = "300"
}
