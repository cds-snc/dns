resource "aws_route53_record" "sp_ssc_alpha_canada_ca_NS" {
  zone_id = aws_route53_zone.alpha_canada_ca_public.zone_id
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

resource "terraform_data" "meta_sp_ssc_alpha_canada_ca_NS" {
  input = {
    resource = aws_route53_record.sp_ssc_alpha_canada_ca_NS.name
    owner    = "azurescience-scienceazure@ssc-spc.gc.ca"
    purpose  = "Nameservers managed by the SSC Science Program"
  }
}