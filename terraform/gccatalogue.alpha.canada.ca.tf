resource "aws_route53_record" "gccatalogue-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "gccatalogue.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-02.azure-dns.com",
    "ns2-02.azure-dns.net",
    "ns3-02.azure.dns.org",
    "ns4-02.azure-dns.info"
  ]
  ttl = "300"
}
