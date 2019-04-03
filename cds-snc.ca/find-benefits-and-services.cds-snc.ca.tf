resource "aws_route53_record" "find-benefits-and-services-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "find-benefits-and-services.cds-snc.ca"
    type    = "CNAME"
    records = [
        "find-benefits-and-services.herokuapp.com"
    ]
    ttl     = "300"

}
