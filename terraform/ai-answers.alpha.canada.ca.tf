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

resource "aws_route53_record" "reponses-ia-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "reponses-ia.alpha.canada.ca"
  type    = "NS"
  ttl     = 300
  records = [
    "ns-340.awsdns-42.com.",
    "ns-1303.awsdns-34.org.",
    "ns-1561.awsdns-03.co.uk.",
    "ns-981.awsdns-58.net."
  ]
}

resource "aws_route53_record" "ai-answers-alpha-canada-ca-TXT" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "ai-answers.alpha.canada.ca"
  type    = "TXT"
  records = [
    "google-site-verification=xaKfN5L_JDtfvYZawdt_yR9D5MuzTbpg5DYat0M6LEU"
  ]
  ttl = "3600"
}
