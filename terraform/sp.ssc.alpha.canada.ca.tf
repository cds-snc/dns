resource "aws_route53_record" "sp-ssc-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "sp.ssc.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns1-35.azure-dns.com",
    "ns2-35.azure-dns.net",
    "ns3-35.azure-dns.org",
    "ns4-35.azure-dns.info"
  ]
  ttl = "300"
}

resource "terraform_data" "meta-sp-ssc-alpha-canada-ca-NS" {
  input = {
    resource = aws_route53_record.sp-ssc-alpha-canada-ca-NS.name
    owner    = "azurescience-scienceazure@ssc-spc.gc.ca"
    purpose  = "Nameservers managed by the SSC Science Program"
  }
}