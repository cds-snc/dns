resource "aws_route53_record" "vac-benefits-finder-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "vac-benefits-finder.cds-snc.ca"
    type    = "A"
    records = ["52.237.20.235"]
    ttl     = "300"

}