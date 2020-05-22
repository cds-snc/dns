resource "aws_route53_record" "opencall-appelouvert-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "opencall-appelouvert.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "dc4vvh422odpa.cloudfront.net"
  ]
  ttl     = "300"
}
