resource "aws_route53_record" "monkey-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "monkey.cds-snc.ca"
    type    = "A"
    records = [
        "35.183.62.41"
    ]
    ttl     = "300"

}