resource "aws_route53_record" "rescheduler-temp-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "rescheduler-temp.cds-snc.ca"
    type    = "CNAME"
    records = [
        "ircc-Publi-7ZOWOPZ2KZVD-1588643486.us-east-1.elb.amazonaws.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "wildcard-rescheduler-temp-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "*.rescheduler-temp.cds-snc.ca"
    type    = "CNAME"

    alias {
        name    = "rescheduler-temp.cds-snc.ca"
        zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "_86c58a26270951c9e015b27fff89f145-rescheduler-temp-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "_86c58a26270951c9e015b27fff89f145.rescheduler-temp.cds-snc.ca"
    type    = "CNAME"
    records = [
        "_3bbab5277ca43f06292aa37c8488d4fa.tljzshvwok.acm-validations.aws."
    ]
    ttl     = "300"

}