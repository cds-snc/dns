resource "aws_route53_record" "covid-benefits-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "covid-benefits.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "CV19BenefitsCDNEndpoint.azureedge.net"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "covid-prestations-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "covid-prestations.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "CV19BenefitsCDNEndpoint.azureedge.net"
    ]
    ttl     = "300"
}