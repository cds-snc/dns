resource "aws_route53_record" "ai-answers-alpha-canada-ca-TXT" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "ai-answers.alpha.canada.ca"
  type    = "TXT"
  records = [
    "google-site-verification=xaKfN5L_JDtfvYZawdt_yR9D5MuzTbpg5DYat0M6LEU"
  ]
  ttl = "3600"
}