resource "aws_route53_zone" "notification-canada-ca-public" {
    name       = "notification.canada.ca"
    comment    = ""

    tags = {
        Project = "dns"
    }
}

output "notification-canada-ca-ns" {
  value= "${aws_route53_zone.notification-canada-ca-public.name_servers}"
}

resource "aws_route53_record" "notification-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "_2115a5004ab7895234c60254e152046b.notification.canada.ca"
    type    = "CNAME"
    records = [
        "_aaacd89cd470de0970c70c7ab1b7d4d5.wggjkglgrm.acm-validations.aws."
    ]
    ttl     = "300"
}

resource "aws_route53_record" "document-notification-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "_db43d1cf891afd4671fb913d18ef0a0e.document.notification.canada.ca"
    type    = "CNAME"
    records = [
        "_130ea19fa1fdd9e59b7632fbac0d7e00.wggjkglgrm.acm-validations.aws."
    ]
    ttl     = "300"
}

resource "aws_route53_record" "dkim1-notification-canada-ca-CNAME" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "wrs6wsp65k764hnaouax5t66vfqrbrst._domainkey.notification.canada.ca"
    type    = "CNAME"
    records = [
        "wrs6wsp65k764hnaouax5t66vfqrbrst.dkim.amazonses.com"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "dkim2-notification-canada-ca-CNAME" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "wrtaqi2wdu42zqjzyf3ikn46kzos4f76._domainkey.notification.canada.ca"
    type    = "CNAME"
    records = [
        "wrtaqi2wdu42zqjzyf3ikn46kzos4f76.dkim.amazonses.com"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "dkim3-notification-canada-ca-CNAME" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "h2d5mnabqwlnowww7rkgpoagtrxt7d4z._domainkey.notification.canada.ca"
    type    = "CNAME"
    records = [
        "h2d5mnabqwlnowww7rkgpoagtrxt7d4z.dkim.amazonses.com"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "notification-canada-ca-SPF" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "notification.canada.ca"
    type    = "TXT"
    records = [
        "v=spf1 include:amazonses.com ~all"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "notification-canada-ca-DMARC" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "_dmarc.notification.canada.ca"
    type    = "TXT"
    records = [
        "v=DMARC1; p=reject; sp=reject; pct=100; rua=mailto:dmarc@cyber.gc.ca"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "amazonses-notification-canada-ca-TXT" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "_amazonses.notification.canada.ca"
    type    = "TXT"
    records = [
        "Ohfl/Syh3ZT5U/7IKELTCXIRaqI42ZJiw0HiUQoCHww="
    ]
    ttl     = "300"
}
