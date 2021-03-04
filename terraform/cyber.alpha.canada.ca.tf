resource "aws_route53_record" "cyber-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "cyber.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-03.azure-dns.com",
    "ns2-03.azure-dns.net",
    "ns3-03.azure-dns.org",
    "ns4-03.azure-dns.info",
  ]
  ttl = "300"
}
