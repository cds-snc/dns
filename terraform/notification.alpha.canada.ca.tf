resource "aws_route53_record" "notification-alpha-canada-ca-A" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "notification.alpha.canada.ca"
    type    = "A"
    records = [
        "35.203.112.92"
    ]
    ttl     = "300"

}