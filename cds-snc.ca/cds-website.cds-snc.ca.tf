resource "aws_route53_record" "cds-website-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "cds-website.cds-snc.ca"
    type    = "CNAME"
    records = [
        "d1pro10ppl2klj.cloudfront.net"
    ]
    ttl     = "300"

}