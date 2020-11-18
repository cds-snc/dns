resource "aws_route53_record" "notification-alpha-canada-ca-A" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "notification.alpha.canada.ca"
    type    = "A"

    set_identifier = "notification.alpha.canada.ca-Primary"

    failover_routing_policy {
        type = "PRIMARY"
    }

    alias {
        name                   = "dualstack.notify-alb-235715269.us-east-1.elb.amazonaws.com."
        zone_id                = "Z35SXDOTRQ7X7K"
        evaluate_target_health = true
    }
}

resource "aws_route53_record" "notification-alpha-canada-ca-A-failover" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "notification.alpha.canada.ca"
    type    = "A"

    set_identifier = "notification.alpha.canada.ca-Secondary"

    failover_routing_policy {
        type = "SECONDARY"
    }

    alias {
        name                   = "s3-website.ca-central-1.amazonaws.com"
        zone_id                = "Z1QDHH18159H29"
        evaluate_target_health = false
    }
}

resource "aws_route53_record" "api-notification-alpha-canada-ca-A" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "api.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "notify-alb-235715269.us-east-1.elb.amazonaws.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "document-notification-alpha-canada-ca-A" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "document.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "notify-alb-235715269.us-east-1.elb.amazonaws.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "api-document-notification-alpha-canada-ca-A" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "api.document.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "notify-alb-235715269.us-east-1.elb.amazonaws.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "api-document-notification-alpha-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_01d16c796a05d4f42e7919c19dde8838.api.document.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "_c8c050c1144e4dec5e36ccdb61362575.zbkrxsrfvj.acm-validations.aws."
    ]
    ttl     = "300"

}

resource "aws_route53_record" "notification-alpha-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_73714e81c7f7350e34a22f64fc6892bf.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "_d6f462435ba01046692930d7774565d4.nhqijqilxf.acm-validations.aws."
    ]
    ttl     = "300"

}


resource "aws_route53_record" "amazonses-notification-alpha-canada-ca-TXT" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_amazonses.notification.alpha.canada.ca"
    type    = "TXT"
    records = [
        "F+pOEXNcTKyLOfjv6vakPH7L7BDJyJWk0z3X4lMEpJk="
    ]
    ttl     = "300"

}

resource "aws_route53_record" "dkim1-notification-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "vqaz5umlocfrnmfbflvju6qduqut7i5h._domainkey.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "vqaz5umlocfrnmfbflvju6qduqut7i5h.dkim.amazonses.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "dkim2-notification-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "hofufbbtcrcvxie3vngnqb6ew3p4qjst._domainkey.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "hofufbbtcrcvxie3vngnqb6ew3p4qjst.dkim.amazonses.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "dkim3-notification-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "t2ihvmsa65nqcjuemxykbsivxbqhecg7._domainkey.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "t2ihvmsa65nqcjuemxykbsivxbqhecg7.dkim.amazonses.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "notification-alpha-canada-ca-SPF" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "notification.alpha.canada.ca"
    type    = "TXT"
    records = [
        "v=spf1 include:amazonses.com ~all"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "notification-alpha-canada-ca-DMARC" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_dmarc.notification.alpha.canada.ca"
    type    = "TXT"
    records = [
        "v=DMARC1; p=reject; sp=reject; pct=100; rua=mailto:dmarc@cyber.gc.ca"
    ]
    ttl     = "300"

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
    ttl     = "30"

}

resource "aws_route53_record" "pbmm-notification-alpha-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_a07b492def227e59365aab830dfbe21a.alpha.notification.canada.ca"
    type    = "CNAME"
    records = [
        "_f8291d5f10595f37e7a33d28c75bc10d.wggjkglgrm.acm-validations.aws."
    ]
    ttl     = "300"
}

resource "aws_route53_record" "pbmm-document-notification-alpha-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_0c4462819f8f2c25376092ba4e0eab1f.document.alpha.notification.canada.ca"
    type    = "CNAME"
    records = [
        "_4dd0ef2252498893a7fdf8a8c5d968b9.wggjkglgrm.acm-validations.aws."
    ]
    ttl     = "300"
}

resource "aws_route53_record" "pbmm-notification-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_2115a5004ab7895234c60254e152046b.notification.canada.ca"
    type    = "CNAME"
    records = [
        "_aaacd89cd470de0970c70c7ab1b7d4d5.wggjkglgrm.acm-validations.aws."
    ]
    ttl     = "300"
}

resource "aws_route53_record" "pbmm-document-notification-canada-ca-ACM-cname" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_db43d1cf891afd4671fb913d18ef0a0e.document.notification.canada.ca"
    type    = "CNAME"
    records = [
        "_130ea19fa1fdd9e59b7632fbac0d7e00.wggjkglgrm.acm-validations.aws."
    ]
    ttl     = "300"
}
