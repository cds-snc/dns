resource "aws_route53_record" "covid-alert-portal-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "covid-alert-portal.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "production.covid-portal.cdssandbox.xyz"
    ]
    ttl     = "300"
}


resource "aws_route53_record" "portail-alerte-covid-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "portail-alerte-covid.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "production.covid-portal.cdssandbox.xyz"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "validation-portail-alerte-covid-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_3ba860f222938a98267338955da3e5ca.portail-alerte-covid.alpha.canada.ca."
    type    = "CNAME"
    records = [
        "_47b1646b80bc5860253dd09b3dde5be4.jfrzftwwjs.acm-validations.aws."
    ]
    ttl     = "300"
}

resource "aws_route53_record" "validation-covid-alert-portal-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_c5a216ebd2eef783096011059aaeb206.covid-alert-portal.alpha.canada.ca."
    type    = "CNAME"
    records = [
        "_655c0c07e4cf58945b17ca3709fe1f5a.jfrzftwwjs.acm-validations.aws."
    ]
    ttl     = "300"
}