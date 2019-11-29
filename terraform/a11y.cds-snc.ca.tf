resource "aws_route53_record" "a11y-cds-snc-ca-CNAME" {
    zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
    name    = "a11y.cds-snc.ca"
    type    = "CNAME"
    records = [
        "flexible-anenome-2mbipgu5nzz78n86sbnndcvk.herokudns.com"
    ]
    ttl     = "300"

}
