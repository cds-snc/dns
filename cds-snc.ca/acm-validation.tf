resource "aws_route53_record" "_c77e17ef5146ea6fd6ba71f12813c9dc-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "_c77e17ef5146ea6fd6ba71f12813c9dc.cds-snc.ca"
    type    = "CNAME"
    records = ["_e88f41d9935120137718f217c73c5389.tljzshvwok.acm-validations.aws."]
    ttl     = "300"

}