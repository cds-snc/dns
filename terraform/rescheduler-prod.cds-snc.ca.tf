resource "aws_route53_record" "rescheduler-prod-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "rescheduler-prod.cds-snc.ca"
    type    = "A"
    records = [
        "35.183.121.12"
    ]
    ttl     = "300"

}