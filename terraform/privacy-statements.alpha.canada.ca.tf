resource "aws_route53_record" "privacy-statements-cds-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "privacy-statements.cds.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "simplify-privacy-statements-v2.herokuapp.com"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "formulaires-confidentialite-snc-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "formulaires-confidentialite.snc.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "simplify-privacy-statements-v2.herokuapp.com"
    ]
    ttl     = "300"
    
}
