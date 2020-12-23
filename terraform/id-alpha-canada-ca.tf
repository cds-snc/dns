resource "aws_route53_record" "id-alpha-canada-ca-NS" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "id.alpha.canada.ca"
    type    = "NS"
    records = [
        "ns1-08.azure-dns.com",
        "ns2-08.azure-dns.net",
        "ns3-08.azure-dns.org",
        "ns4-08.azure-dns.info"
    ]
    ttl     = "300"

}