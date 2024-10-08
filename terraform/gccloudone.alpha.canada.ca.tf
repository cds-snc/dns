resource "aws_route53_record" "gccloudone-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "gccloudone.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "gccloudone.github.io"
  ]
  ttl = "300"
}

resource "aws_route53_record" "aurora-gccloudone-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "aurora.gccloudone.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "gccloudone.github.io"
  ]
  ttl = "300"
}
