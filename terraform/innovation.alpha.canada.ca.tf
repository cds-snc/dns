resource "aws_route53_record" "innovation-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "innovation.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-04.azure-dns.com.",
    "ns2-04.azure-dns.net.",
    "ns3-04.azure-dns.org.",
    "ns4-04.azure-dns.info."
]
  ttl = "300"
}