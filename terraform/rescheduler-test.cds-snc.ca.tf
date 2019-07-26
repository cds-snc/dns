resource "aws_route53_record" "rescheduler-test-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "rescheduler-test.cds-snc.ca"
    type    = "A"
    records = [
        "35.183.124.35"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "wildcard-rescheduler-test-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "*.rescheduler-test.cds-snc.ca"
    type    = "A"

    alias {
        name    = "rescheduler-test.cds-snc.ca"
        zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "_acme-challenge-rescheduler-test-cds-snc-ca-TXT" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "_acme-challenge.rescheduler-test.cds-snc.ca"
    type    = "TXT"
    records = [
        "2otPLerTwGvH9jA7sINcpDWFsmin-WWIW7YYpDSF19U", 
        "smYnULgLlIS5s3FZsj7qmWFpgCGJ7DjE8712l_14hCQ"
    ]
    ttl     = "300"

}