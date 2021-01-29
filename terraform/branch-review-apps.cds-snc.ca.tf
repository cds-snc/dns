resource "aws_route53_record" "branch-review-apps-cds-snc-ca-A" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "branch-review-apps.cds-snc.ca"
  type    = "A"
  records = [
    "35.202.225.254"
  ]
  ttl = "300"

}
