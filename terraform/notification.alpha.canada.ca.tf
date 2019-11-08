resource "aws_route53_record" "notification-alpha-canada-ca-A" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "notification.alpha.canada.ca"
    type    = "A"

    set_identifier = "notification.alpha.canada.ca-Primary"

    failover_routing_policy {
        type = "PRIMARY"
    }

    alias {
        name                   = "dualstack.ac88d4ecee38411e9bb370e1a3d936eb-1183239765.us-east-1.elb.amazonaws.com."
        zone_id                = "Z35SXDOTRQ7X7K"
        evaluate_target_health = true
    }
}

resource "aws_route53_record" "notification-alpha-canada-ca-A-failover" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
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
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "api.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "ac88d4ecee38411e9bb370e1a3d936eb-1183239765.us-east-1.elb.amazonaws.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "document-notification-alpha-canada-ca-A" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "document.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "ac88d4ecee38411e9bb370e1a3d936eb-1183239765.us-east-1.elb.amazonaws.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "api-document-notification-alpha-canada-ca-A" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "api.document.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "ac88d4ecee38411e9bb370e1a3d936eb-1183239765.us-east-1.elb.amazonaws.com"
    ]
    ttl     = "300"

}


resource "aws_route53_record" "amazonses-notification-alpha-canada-ca-TXT" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "_amazonses.notification.alpha.canada.ca"
    type    = "TXT"
    records = [
        "F+pOEXNcTKyLOfjv6vakPH7L7BDJyJWk0z3X4lMEpJk="
    ]
    ttl     = "300"

}

resource "aws_route53_record" "dkim1-notification-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "vqaz5umlocfrnmfbflvju6qduqut7i5h._domainkey.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "vqaz5umlocfrnmfbflvju6qduqut7i5h.dkim.amazonses.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "dkim2-notification-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "hofufbbtcrcvxie3vngnqb6ew3p4qjst._domainkey.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "hofufbbtcrcvxie3vngnqb6ew3p4qjst.dkim.amazonses.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "dkim3-notification-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "t2ihvmsa65nqcjuemxykbsivxbqhecg7._domainkey.notification.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "t2ihvmsa65nqcjuemxykbsivxbqhecg7.dkim.amazonses.com"
    ]
    ttl     = "300"

}