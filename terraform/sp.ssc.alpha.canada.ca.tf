resource "aws_route53_record" "sp-ssc-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "sp.ssc.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-32.azure-dns.com",
    "ns2-32.azure-dns.net",
    "ns3-32.azure-dns.org",
    "ns4-32.azure-dns.info"
  ]
  ttl = "300"
}