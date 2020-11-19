resource "aws_route53_record" "dmarc-report-alpha-canada-ca-A" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "dmarc-reports.alpha.canada.ca"
    type    = "CNAME"
    records = [
          "dmarc-report-api-brpuw6ogca-nn.a.run.app"
    ]
    ttl     = "300"

}
