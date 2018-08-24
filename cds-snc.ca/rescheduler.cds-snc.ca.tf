resource "aws_route53_record" "rescheduler-dev-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "rescheduler-dev.cds-snc.ca"
    type    = "A"
    records = ["35.183.124.35"]
    ttl     = "300"

}

resource "aws_route53_record" "wildcard-rescheduler-dev-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "*.rescheduler-dev.cds-snc.ca"
    type    = "A"

    alias {
        name    = "rescheduler-dev.cds-snc.ca"
        zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "_acme-challenge-rescheduler-dev-cds-snc-ca-TXT" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "_acme-challenge.rescheduler-dev.cds-snc.ca"
    type    = "TXT"
    records = ["\"XRweum4xSV_4iimY2rJCX-6lnZDc9zAgrVDL0vWm5Zw\"", "\"6id1gvm9xLfzCkiGyZTypCPVZB7bdQMuNIp3DjCqlSc\""]
    ttl     = "60"

}

resource "aws_route53_record" "rescheduler-prod-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "rescheduler-prod.cds-snc.ca"
    type    = "A"
    records = ["35.183.121.12"]
    ttl     = "300"

}

resource "aws_route53_record" "rescheduler-temp-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "rescheduler-temp.cds-snc.ca"
    type    = "CNAME"
    records = ["ircc-Publi-15QLTXATEB0OR-1160369934.us-east-1.elb.amazonaws.com"]
    ttl     = "300"

}

resource "aws_route53_record" "wildcard-rescheduler-temp-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "*.rescheduler-temp.cds-snc.ca"
    type    = "CNAME"

    alias {
        name    = "rescheduler-temp.cds-snc.ca"
        zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "rescheduler-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "rescheduler.cds-snc.ca"
    type    = "A"
    records = ["35.183.121.12"]
    ttl     = "300"

}

resource "aws_route53_record" "wildcard-rescheduler-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "*.rescheduler.cds-snc.ca"
    type    = "A"

    alias {
        name    = "rescheduler.cds-snc.ca"
        zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "_acme-challenge-rescheduler-cds-snc-ca-TXT" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "_acme-challenge.rescheduler.cds-snc.ca"
    type    = "TXT"
    records = ["\"YbzOaNCq_WMvje60niyhaAJx5-1N4XtrfKyxmhHsE0Y\"", "\"-ywp6oma6Y5KcIJogfA7RjBh3Qvhj6ZkoIYpPKt1wqY\""]
    ttl     = "300"

}