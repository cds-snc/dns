resource "aws_route53_record" "claim-tax-benefits-cra-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "claim-tax-benefits.cra.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "claim-tax-benefits.azurewebsites.net"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "reclamer-des-avantages-arc-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "reclamer-des-avantages-fiscaux.arc.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "claim-tax-benefits.azurewebsites.net"
    ]
    ttl     = "300"

}
