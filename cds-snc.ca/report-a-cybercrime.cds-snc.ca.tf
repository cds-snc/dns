resource "aws_route53_record" "report-a-cybercrime-cds-snc-ca-A" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "report-a-cybercrime.cds-snc.ca"
    type    = "A"
    records = [
			"40.85.218.68"
    ]
    ttl     = "300"

}
