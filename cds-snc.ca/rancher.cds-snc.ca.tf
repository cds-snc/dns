resource "aws_route53_record" "rancher-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "rancher.cds-snc.ca"
    type    = "A"
    records = [
        "35.183.31.85"
    ]
    ttl     = "300"

}