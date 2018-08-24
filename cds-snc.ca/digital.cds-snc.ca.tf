resource "aws_route53_record" "digital-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "digital.cds-snc.ca"
    type    = "CNAME"
    records = ["d1tegj6rg6by1o.cloudfront.net."]
    ttl     = "200"

}