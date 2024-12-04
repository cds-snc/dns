resource "aws_route53_record" "ai-answers-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "ai-answers.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "react-answers.vercel.app"
  ]
  ttl = "300"
}

resource "aws_route53_record" "reponses-ia-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "reponses-ia.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "react-answers.vercel.app"
  ]
  ttl = "300"
}
