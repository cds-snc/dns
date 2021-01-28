resource "aws_route53_record" "covid-benefits-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "covid-benefits.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "espbdtscb19appservice.azurewebsites.net"
  ]
  ttl = "300"
}

resource "aws_route53_record" "covid-benefits-alpha-canada-ca-TXT" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "asuid.covid-benefits.alpha.canada.ca"
  type    = "TXT"
  records = [
    "5EC538F6E00B1480F70188C0174751749BEB5ACD0E4400FE3A85E48FA6CFC715"
  ]
  ttl = "3600"

}
resource "aws_route53_record" "covid-prestations-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "covid-prestations.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "espbdtscb19appservice.azurewebsites.net"
  ]
  ttl = "300"
}

resource "aws_route53_record" "covid-prestations-alpha-canada-ca-TXT" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "asuid.covid-prestations.alpha.canada.ca"
  type    = "TXT"
  records = [
    "5EC538F6E00B1480F70188C0174751749BEB5ACD0E4400FE3A85E48FA6CFC715"
  ]
  ttl = "3600"

}
