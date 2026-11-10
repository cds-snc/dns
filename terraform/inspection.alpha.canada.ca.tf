resource "aws_route53_record" "inspection-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "inspection.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-36.azure-dns.com.",
    "ns2-36.azure-dns.net.",
    "ns3-36.azure-dns.org.",
    "ns4-36.azure-dns.info."
  ]
  ttl = "21600"
}
