resource "aws_route53_record" "covid-alert-portal-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "covid-alert-portal.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "production.terraform.covid-hcportal.cdssandbox.xyz"
    ]
    ttl     = "300"
}


resource "aws_route53_record" "portail-alerte-covid-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "portail-alerte-covid.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "production.terraform.covid-hcportal.cdssandbox.xyz"
    ]
    ttl     = "300"
}

resource "aws_route53_record" "validation-portail-alerte-covid-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_b5da3cf311e50a1f6ce651c033bef156.portail-alerte-covid.alpha.canada.ca."
    type    = "CNAME"
    records = [
        "_530f117a685c6f7186bd6b757db1e9b0.jfrzftwwjs.acm-validations.aws."
    ]
    ttl     = "300"
}

resource "aws_route53_record" "validation-covid-alert-portal-alpha-canada-ca-CNAME" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "_c8894359086d569aa3b6486fbf9a0138.covid-alert-portal.alpha.canada.ca."
    type    = "CNAME"
    records = [
        "_acc5da9ec564ae677f38d06c8cf396e8.jfrzftwwjs.acm-validations.aws."
    ]
    ttl     = "300"
}