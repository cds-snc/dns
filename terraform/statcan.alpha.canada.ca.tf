resource "aws_route53_record" "statistics-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "statistics.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "www.prod.cloud.statcan.ca"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "statistiques-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "statistiques.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "www.prod.cloud.statcan.ca"
    ]
    ttl     = "300"
}
