resource "aws_route53_record" "list-manager-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "list-manager.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-298.awsdns-37.com",
    "ns-1954.awsdns-52.co.uk",
    "ns-626.awsdns-14.net",
    "ns-1075.awsdns-06.org"
  ]
  ttl = "300"
}
