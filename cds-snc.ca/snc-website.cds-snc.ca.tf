resource "aws_route53_record" "snc-website-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "snc-website.cds-snc.ca"
    type    = "CNAME"
    records = [
        "d1k15xr7uug61l.cloudfront.net"
    ]
    ttl     = "300"

}