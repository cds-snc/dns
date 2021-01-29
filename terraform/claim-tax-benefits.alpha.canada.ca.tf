resource "aws_route53_record" "claim-tax-benefits-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "claim-tax-benefits.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "ctb-load-balancer-628344302.ca-central-1.elb.amazonaws.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "reclamer-des-avantages-fiscaux-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "reclamer-des-avantages-fiscaux.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "ctb-load-balancer-628344302.ca-central-1.elb.amazonaws.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "claim-tax-benefits-alpha-canada-ca-aws-dns-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_fdae793703c2c7c9c33369c921f965b4.claim-tax-benefits.alpha.canada.ca."
  type    = "CNAME"
  records = [
    "_c2f4df6e286fd394d49a69aa49c86236.kirrbxfjtw.acm-validations.aws."
  ]
  ttl = "300"
}