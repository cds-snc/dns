resource "aws_route53_record" "issue-verify-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "issue-verify.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-08.azure-dns.com",
    "ns2-08.azure-dns.net",
    "ns3-08.azure-dns.org",
    "ns4-08.azure-dns.info"
  ]
  ttl = "300"
}

resource "aws_route53_record" "delivrance-verification-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "delivrance-verification.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-07.azure-dns.com",
    "ns2-07.azure-dns.net",
    "ns3-07.azure-dns.org",
    "ns4-07.azure-dns.info"
  ]
  ttl = "300"
}
