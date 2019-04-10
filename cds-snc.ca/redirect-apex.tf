resource "aws_route53_record" "cds-snc-ca-A" {
  zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
  name    = "cds-snc.ca"
  type    = "A"

  alias {
    name                   = "cds-redirect.s3-website.us-east-2.amazonaws.com"
    zone_id                = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    evaluate_target_health = true
  }
}
