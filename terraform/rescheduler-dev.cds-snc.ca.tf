resource "aws_route53_record" "rescheduler-dev-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "rescheduler-dev.cds-snc.ca"
  type    = "CNAME"
  records = [
    "d1z7870hb8y3pu.cloudfront.net"
  ]
  ttl = "300"

}

resource "aws_route53_record" "wildcard-rescheduler-dev-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "*.rescheduler-dev.cds-snc.ca"
  type    = "CNAME"
  records = [
    "d1z7870hb8y3pu.cloudfront.net"
  ]
  ttl = "300"

}

resource "aws_route53_record" "_6ad6e4d2289f5b17d4761e6a95fe53ee-rescheduler-dev-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "_6ad6e4d2289f5b17d4761e6a95fe53ee.rescheduler-dev.cds-snc.ca"
  type    = "CNAME"
  records = [
    "_9f7db3b2eec58e7b8e1ca0f84b26c715.tljzshvwok.acm-validations.aws."
  ]
  ttl = "300"

}

resource "aws_route53_record" "_acme-challenge-rescheduler-dev-cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "_acme-challenge.rescheduler-dev.cds-snc.ca"
  type    = "TXT"
  records = [
    "XRweum4xSV_4iimY2rJCX-6lnZDc9zAgrVDL0vWm5Zw",
    "6id1gvm9xLfzCkiGyZTypCPVZB7bdQMuNIp3DjCqlSc"
  ]
  ttl = "60"

}