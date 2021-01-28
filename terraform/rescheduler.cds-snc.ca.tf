resource "aws_route53_record" "rescheduler-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "rescheduler.cds-snc.ca"
  type    = "A"
  alias {
    name                   = "d2q7bfe7f2hrcj.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "wildcard-rescheduler-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "*.rescheduler.cds-snc.ca"
  type    = "A"
  alias {
    name                   = "d2q7bfe7f2hrcj.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "_acme-challenge-rescheduler-cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "_acme-challenge.rescheduler.cds-snc.ca"
  type    = "TXT"
  records = [
    "YbzOaNCq_WMvje60niyhaAJx5-1N4XtrfKyxmhHsE0Y",
    "-ywp6oma6Y5KcIJogfA7RjBh3Qvhj6ZkoIYpPKt1wqY"
  ]
  ttl = "300"

}

resource "aws_route53_record" "_faa1db50e36e98191aefeeb9548c9165-rescheduler-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "_faa1db50e36e98191aefeeb9548c9165.rescheduler.cds-snc.ca"
  type    = "CNAME"
  records = [
    "_f7f15af1bf1c1c2ee7de91625cfa62e9.tljzshvwok.acm-validations.aws."
  ]
  ttl = "300"

}

resource "aws_route53_record" "_9ad5e390e0591a7c0fee72f5280dc709-rescheduler-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "_9ad5e390e0591a7c0fee72f5280dc709.rescheduler.cds-snc.ca."
  type    = "CNAME"
  records = [
    "_9213aa05d321dcdf588698442349a0f7.kirrbxfjtw.acm-validations.aws."
  ]
  ttl = "300"

}

resource "aws_route53_record" "_1e29e5064d202307d185782ac5c428ab-rescheduler-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "_1e29e5064d202307d185782ac5c428ab.rescheduler.cds-snc.ca."
  type    = "CNAME"
  records = [
    "_b59d6e58723675a01fe65e054dee675c.wggjkglgrm.acm-validations.aws."
  ]
  ttl = "300"

}
