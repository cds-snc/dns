resource "aws_route53_record" "benefits-avantages-cds-snc-ca-CNAME" {
    zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
    name    = "benefits-avantages.cds-snc.ca"
    type    = "CNAME"
    records = [
        "developmental-raven-b8rd2rn5hu8izdje76h0gom5.herokudns.com"
    ]
    ttl     = "300"

}
