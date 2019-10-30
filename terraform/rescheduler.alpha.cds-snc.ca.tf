resource "aws_route53_record" "_acm-validation-rescheduler-alpha-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "_124e31a4e6b52e341c197ae439978b0e.rescheduler.alpha.cds-snc.ca."
    type    = "CNAME"
    records = [
        "_5cf85d02e07acc96d47d85ce22c348b0.kirrbxfjtw.acm-validations.aws."
    ]
    ttl     = "60"
}