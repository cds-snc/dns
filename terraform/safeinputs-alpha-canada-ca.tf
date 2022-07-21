resource "aws_route53_record" "safeinputs-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "safeinputs.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-cloud-e1.googledomains.com.",
    "ns-cloud-e2.googledomains.com.",
    "ns-cloud-e3.googledomains.com.",
    "ns-cloud-e4.googledomains.com.",
  ]
  ttl = "300"
}

resource "aws_route53_record" "entreessecurisees-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "entreessecurisees.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-cloud-e1.googledomains.com.",
    "ns-cloud-e2.googledomains.com.",
    "ns-cloud-e3.googledomains.com.",
    "ns-cloud-e4.googledomains.com.",
  ]
  ttl = "300"
}
