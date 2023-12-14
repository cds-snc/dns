resource "aws_route53_record" "design-system-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "design-system.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-1553.awsdns-02.co.uk",
    "ns-527.awsdns-01.net",
    "ns-1282.awsdns-32.org",
    "ns-299.awsdns-37.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "systeme-design-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "systeme-design.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-785.awsdns-34.net",
    "ns-1850.awsdns-39.co.uk",
    "ns-316.awsdns-39.com",
    "ns-1302.awsdns-34.org",
  ]
  ttl = "300"
}
