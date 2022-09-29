locals {
  acme_challenge       = "_acme_challenge"
  challenges_subdomain = "challenges.cloud.statcan.ca"
}

resource "aws_route53_record" "statistics-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "statistics.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "www-alpha.prod.cloud.statcan.ca"
  ]
  ttl = "300"
}

resource "aws_route53_record" "_acme-challenge-statistics-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = join(".", [local.acme_challenge, aws_route53_record.statistics-alpha-canada-ca-CNAME.name])
  type    = "CNAME"
  records = [
    join(".", [aws_route53_record.statistics-alpha-canada-ca-CNAME.name, local.challenges_subdomain])
  ]
  ttl = "300"
}

resource "aws_route53_record" "statistique-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "statistique.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "www-alpha.prod.cloud.statcan.ca"
  ]
  ttl = "300"
}

resource "aws_route53_record" "_acme-challenge-statistique-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = join(".", [local.acme_challenge, aws_route53_record.statistique-alpha-canada-ca-CNAME.name])
  type    = "CNAME"
  records = [
    join(".", [aws_route53_record.statistique-alpha-canada-ca-CNAME.name, local.challenges_subdomain])
  ]
  ttl = "300"
}

resource "aws_route53_record" "energy-information-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "energy-information.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "ccei-alpha.prod.cloud.statcan.ca"
  ]
  ttl = "300"
}

resource "aws_route53_record" "_acme-challenge-energy-information-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = join(".", [local.acme_challenge, aws_route53_record.energy-information-alpha-canada-ca-CNAME.name])
  type    = "CNAME"
  records = [
    join(".", [aws_route53_record.energy-information-alpha-canada-ca-CNAME.name, local.challenges_subdomain])
  ]
  ttl = "300"
}

resource "aws_route53_record" "information-energie-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "information-energie.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "ccei-alpha.prod.cloud.statcan.ca"
  ]
  ttl = "300"
}

resource "aws_route53_record" "_acme-challenge-information-energie-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = join(".", [local.acme_challenge, aws_route53_record.information-energie-alpha-canada-ca-CNAME.name])
  type    = "CNAME"
  records = [
    join(".", [aws_route53_record.information-energie-alpha-canada-ca-CNAME.name, local.challenges_subdomain])
  ]
  ttl = "300"
}