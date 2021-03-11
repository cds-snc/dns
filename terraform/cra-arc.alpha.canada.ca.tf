resource "aws_route53_record" "cra-arc-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "cra-arc.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-06.azure-dns.com",
    "ns2-06.azure-dns.net",
    "ns3-06.azure-dns.org",
    "ns4-06.azure-dns.info",
  ]
  ttl = "300"
}
