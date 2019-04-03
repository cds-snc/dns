resource "aws_route53_record" "benefits-avantages-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "benefits-avantages.cds-snc.ca"
    type    = "CNAME"
    records = [
        "benefits-avantages.herokuapp.com"
    ]
    ttl     = "300"

}
