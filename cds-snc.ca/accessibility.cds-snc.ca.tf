#resource "aws_route53_record" "accessibility-cds-snc-ca-CNAME" {
#    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
#    name    = "accessibility.cds-snc.ca"
#    type    = "CNAME"
#    records = [
#        "cds-snc.github.io"
#    ]
#    ttl     = "300"
#
#}