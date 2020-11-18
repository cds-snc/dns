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

resource "aws_route53_record" "pbmm-notification-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "_2115a5004ab7895234c60254e152046b.notification.canada.ca"
    type    = "CNAME"
    records = [
        "_aaacd89cd470de0970c70c7ab1b7d4d5.wggjkglgrm.acm-validations.aws."
    ]
    ttl     = "300"
}

resource "aws_route53_record" "pbmm-document-notification-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
    name    = "_db43d1cf891afd4671fb913d18ef0a0e.document.notification.canada.ca"
    type    = "CNAME"
    records = [
        "_130ea19fa1fdd9e59b7632fbac0d7e00.wggjkglgrm.acm-validations.aws."
    ]
    ttl     = "300"
}
