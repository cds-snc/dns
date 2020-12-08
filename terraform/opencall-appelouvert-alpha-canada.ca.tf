resource "aws_route53_record" "opencall-appelouvert-alpha-canada-ca-A" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "opencall-appelouvert.alpha.canada.ca"
    type    = "A"
    alias {
        name                   = "d3ltcddksvc3w1.cloudfront.net"
        zone_id                = "Z2FDTNDATAQYW2"
        evaluate_target_health = true
    }
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