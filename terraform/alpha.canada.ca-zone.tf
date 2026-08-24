resource "aws_route53_zone" "alpha-canada-ca-public" {
  name    = "alpha.canada.ca"
  comment = ""

  tags = {
    Project = "dns"
  }
}

output "alpha-canada-ca-ns" {
  value = aws_route53_zone.alpha-canada-ca-public.name_servers
}

resource "aws_route53_record" "alpha-canada-ca-alias" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "alpha.canada.ca"
  type    = "A"
  alias {
    name                   = "d188wm8umhgzev.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "ai-answers-acm-validation" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_5707bb93bbcbb5aed0be674ebaa71764.ai-answers.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "_5311683aec2b649de50998c8727cff32.xlfgrmvvlj.acm-validations.aws."
  ]
  ttl = "300"

}

resource "aws_route53_record" "reponses-ia-acm-validation" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_1d0d8a2a7dded94a02d05e9b8ebfe919.reponses-ia.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "_27e44abc303a70a8d7e6aaa65c5c2047.xlfgrmvvlj.acm-validations.aws."
  ]
  ttl = "300"

}

resource "aws_route53_record" "ai-answers-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "ai-answers.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "ai-answers.alpha.canada.ca.edgekey.net"
  ]
  ttl = "300"
}

resource "aws_route53_record" "reponses-ia-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "reponses-ia.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "ai-answers.alpha.canada.ca.edgekey.net"
  ]
  ttl = "300"
}