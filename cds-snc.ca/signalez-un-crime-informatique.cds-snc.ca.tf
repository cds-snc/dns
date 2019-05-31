resource "aws_route53_record" "signalez-un-crime-informatique-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "signalez-un-crime-informatique.cds-snc.ca"
    type    = "A"
    records = [
      "52.138.16.103"
    ]
    ttl     = "300"

}
