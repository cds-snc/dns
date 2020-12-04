resource "aws_route53_record" "opencall-appelouvert-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "opencall-appelouvert.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "dc4vvh422odpa.cloudfront.net"
  ]
  ttl     = "300"
}

resource "aws_route53_record" "_cb979fcab2fc2fecda36a5b4a82f5aa6-opencall-appelouvert-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_cb979fcab2fc2fecda36a5b4a82f5aa6.opencall-appelouvert.alpha.canada.ca."
    type    = "CNAME"
    records = [
        "_02898b792f1aefc50c4153cd49a979c8.wggjkglgrm.acm-validations.aws."
    ]
    ttl     = "300"

}