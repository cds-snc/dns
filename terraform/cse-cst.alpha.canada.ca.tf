resource "aws_route53_record" "cse-cst-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "cse-cst.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-07.azure-dns.com",
    "ns2-07.azure-dns.net",
    "ns3-07.azure-dns.org",
    "ns4-07.azure-dns.info",
  ]
  ttl = "300"
}
