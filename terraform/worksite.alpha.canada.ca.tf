
//resource "aws_route53_record" "worksite-alpha-canada-ca-a" {
//  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
//  name    = "worksite.alpha.canada.ca"
//  type    = "A"
//  records = [
//    "20.104.121.246"
//  ]
//  ttl = "300"
//}

resource "aws_route53_record" "worksite-alpha-canada-ca-a" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "worksite.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "gcr2wp-non-cpa-dev.powerappsportals.com"
  ]
  ttl = "300"
}