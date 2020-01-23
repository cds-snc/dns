resource "aws_route53_record" "report-a-scam-cds-snc-ca-CNAME" {
    zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
    name    = "report-a-scam.cds-snc.ca"
    type    = "CNAME"
    records = [
        "report-a-scam.azurewebsites.net"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "signalez-un-crime-informatique-cds-snc-ca-CNAME" {
    zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
    name    = "signalez-un-crime-informatique.cds-snc.ca"
    type    = "CNAME"
    records = [
        "report-a-scam.azurewebsites.net"
    ]
    ttl     = "300"
}
