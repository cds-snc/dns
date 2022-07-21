resource "aws_route53_record" "notification-alpha-canada-ca-ALIAS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "notification.alpha.canada.ca"
  type    = "A"

  alias {
    name                   = local.notification_alb
    zone_id                = local.notification_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "api-notification-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "api.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    local.notification_alb
  ]
  ttl = "300"

}

resource "aws_route53_record" "document-notification-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "document.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    local.notification_alb
  ]
  ttl = "300"

}

resource "aws_route53_record" "api-document-notification-alpha-canada-ca-A" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "api.document.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    local.notification_alb
  ]
  ttl = "300"

}

resource "aws_route53_record" "api-document-notification-alpha-canada-ca-ACM-cname" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_01d16c796a05d4f42e7919c19dde8838.api.document.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "_c8c050c1144e4dec5e36ccdb61362575.zbkrxsrfvj.acm-validations.aws."
  ]
  ttl = "300"

}

resource "aws_route53_record" "api-notification-alpha-canada-ca-ACM-cname" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_5d022a2aee7df473fcb75e0e12b47220.api.notification.alpha.canada.ca."
  type    = "CNAME"
  records = [
    "_f52039e56b4219e56f5e258613b5c77d.mqzgcdqkwq.acm-validations.aws."
  ]
  ttl = "300"

}

resource "aws_route53_record" "notification-alpha-canada-ca-ACM-cname" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_73714e81c7f7350e34a22f64fc6892bf.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "_d6f462435ba01046692930d7774565d4.nhqijqilxf.acm-validations.aws."
  ]
  ttl = "300"

}


resource "aws_route53_record" "amazonses-notification-alpha-canada-ca-TXT" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_amazonses.notification.alpha.canada.ca"
  type    = "TXT"
  records = [
    "F+pOEXNcTKyLOfjv6vakPH7L7BDJyJWk0z3X4lMEpJk="
  ]
  ttl = "300"

}

resource "aws_route53_record" "dkim1-notification-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "vqaz5umlocfrnmfbflvju6qduqut7i5h._domainkey.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "vqaz5umlocfrnmfbflvju6qduqut7i5h.dkim.amazonses.com"
  ]
  ttl = "300"

}

resource "aws_route53_record" "dkim2-notification-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "hofufbbtcrcvxie3vngnqb6ew3p4qjst._domainkey.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "hofufbbtcrcvxie3vngnqb6ew3p4qjst.dkim.amazonses.com"
  ]
  ttl = "300"

}

resource "aws_route53_record" "dkim3-notification-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "t2ihvmsa65nqcjuemxykbsivxbqhecg7._domainkey.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "t2ihvmsa65nqcjuemxykbsivxbqhecg7.dkim.amazonses.com"
  ]
  ttl = "300"

}

resource "aws_route53_record" "notification-alpha-canada-ca-SPF" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "notification.alpha.canada.ca"
  type    = "TXT"
  records = [
    "v=spf1 include:amazonses.com -all"
  ]
  ttl = "300"

}

resource "aws_route53_record" "notification-alpha-canada-ca-DMARC" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_dmarc.notification.alpha.canada.ca"
  type    = "TXT"
  records = [
    "v=DMARC1; p=reject; sp=reject; pct=100; rua=mailto:dmarc@cyber.gc.ca"
  ]
  ttl = "300"

}

resource "aws_route53_record" "m-notification-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "m.notification.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-506.awsdns-63.com",
    "ns-865.awsdns-44.net",
    "ns-2019.awsdns-60.co.uk",
    "ns-1201.awsdns-22.org"
  ]
  ttl = "30"

}

resource "aws_route53_record" "pbmm-notification-alpha-canada-ca-ACM-cname" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_c04744a360b120e8b7431728784deab4.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "_70060f7d839ca6659556126a3224d85b.wggjkglgrm.acm-validations.aws."
  ]
  ttl = "300"
}

resource "aws_route53_record" "pbmm-document-notification-alpha-canada-ca-ACM-cname" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_35e023fab08debc90c4312ec398d5458.document.notification.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "_851a551fec0bff7d31f336583a3138e7.wggjkglgrm.acm-validations.aws."
  ]
  ttl = "300"
}
