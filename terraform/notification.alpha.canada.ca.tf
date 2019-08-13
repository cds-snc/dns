resource "aws_route53_record" "notification-alpha-canada-ca-A" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "notification.alpha.canada.ca"
    type    = "A"
    records = [
        "35.203.112.92"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "api-notification-alpha-canada-ca-A" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "api.notification.alpha.canada.ca"
    type    = "A"
    records = [
        "35.203.112.92"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "amazonses-notification-alpha-canada-ca-TXT" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "_amazonses.notification.alpha.canada.ca"
    type    = "TXT"
    records = [
        "0H30fnu5ycQllYqyOt5Urlx1uGlC/c35skW+0MICc+I="
    ]
    ttl     = "300"

}

resource "aws_route53_record" "dkim1-notification-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "izrd743bgdwnthnxcpwktjawyj25ddve._domainkey.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "izrd743bgdwnthnxcpwktjawyj25ddve.dkim.amazonses.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "dkim2-notification-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "kez24ldm7sz2cqftttnqjv3mb452swaa._domainkey.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "kez24ldm7sz2cqftttnqjv3mb452swaa.dkim.amazonses.com"
    ]
    ttl     = "300"

}