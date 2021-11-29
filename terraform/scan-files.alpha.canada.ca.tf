resource "aws_route53_record" "scan-files-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "scan-files.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-191.awsdns-23.com",
    "ns-1616.awsdns-10.co.uk",
    "ns-1450.awsdns-53.org",
    "ns-530.awsdns-02.net"
  ]
  ttl = "300"
}
