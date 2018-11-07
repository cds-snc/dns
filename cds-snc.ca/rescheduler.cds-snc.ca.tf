resource "aws_route53_record" "rescheduler-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "rescheduler.cds-snc.ca"
    type    = "CNAME"
    records = [
        "d31g0redbbnj2z.cloudfront.net"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "wildcard-rescheduler-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "*.rescheduler.cds-snc.ca"
    type    = "CNAME"
    records = [
        "d31g0redbbnj2z.cloudfront.net"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "_acme-challenge-rescheduler-cds-snc-ca-TXT" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "_acme-challenge.rescheduler.cds-snc.ca"
    type    = "TXT"
    records = [
        "YbzOaNCq_WMvje60niyhaAJx5-1N4XtrfKyxmhHsE0Y", 
        "-ywp6oma6Y5KcIJogfA7RjBh3Qvhj6ZkoIYpPKt1wqY"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "_faa1db50e36e98191aefeeb9548c9165-rescheduler-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "_faa1db50e36e98191aefeeb9548c9165.rescheduler.cds-snc.ca"
    type    = "CNAME"
    records = [
        "_f7f15af1bf1c1c2ee7de91625cfa62e9.tljzshvwok.acm-validations.aws."
    ]
    ttl     = "300"

}