resource "aws_route53_record" "ai-answers-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "ai-answers.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-340.awsdns-42.com.",
    "ns-1303.awsdns-34.org.",
    "ns-1561.awsdns-03.co.uk.",
    "ns-981.awsdns-58.net."
  ]
  ttl = "300"
}

resource "aws_route53_record" "reponses-ia-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "reponses-ia.alpha.canada.ca"
  type    = "CNAME"
  ttl     = "300"
  records = [
    "ai-answers.alpha.canada.ca."
  ]
}
