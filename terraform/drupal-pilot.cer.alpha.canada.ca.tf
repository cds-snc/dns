resource "aws_route53_record" "drupal-pilot-cer-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "drupal-pilot.cer.alpha.canada.ca"
  type    = "A"
  records = [
    "52.237.15.42"
  ]
  ttl     = "300"
}