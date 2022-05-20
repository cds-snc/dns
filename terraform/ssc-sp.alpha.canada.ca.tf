resource "aws_route53_record" "ssc-sp-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "ssc-sp.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-32.azure-dns.com",
    "ns2-32.azure-dns.net",
    "ns3-32.azure-dns.org",
    "ns4-32.azure-dns.info"
  ]
  ttl = "300"
}