resource "aws_route53_record" "claim-tax-benefits-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "claim-tax-benefits.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "ctb-load-balancer-1050276049.ca-central-1.elb.amazonaws.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "reclamer-des-avantages-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "reclamer-des-avantages-fiscaux.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "ctb-load-balancer-1050276049.ca-central-1.elb.amazonaws.com"
    ]
    ttl     = "300"

}