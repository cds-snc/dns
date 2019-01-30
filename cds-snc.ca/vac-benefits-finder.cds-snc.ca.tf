resource "aws_route53_record" "vac-benefits-finder-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "vac-benefits-finder.cds-snc.ca"
    type    = "CNAME"
    records = [
        "vac-benefit-finder-app.azurewebsites.net"
    ]
    ttl     = "300"

}