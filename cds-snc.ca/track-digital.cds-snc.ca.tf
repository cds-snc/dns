resource "aws_route53_record" "track-digital-dev-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "track-digital-dev.cds-snc.ca"
    type    = "CNAME"
    records = ["https-tracker.canadacentral.cloudapp.azure.com"]
    ttl     = "300"

}

resource "aws_route53_record" "track-digital-fr-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "track-digital-fr.cds-snc.ca"
    type    = "CNAME"
    records = ["https-tracker.canadacentral.cloudapp.azure.com"]
    ttl     = "300"

}

resource "aws_route53_record" "track-digital-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "track-digital.cds-snc.ca"
    type    = "CNAME"
    records = ["https-tracker.canadacentral.cloudapp.azure.com"]
    ttl     = "60"

}