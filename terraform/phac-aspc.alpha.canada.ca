resource "aws_route53_record" "phac-aspc-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "phac-aspc.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-cloud-c1.googledomains.com.",
    "ns-cloud-c2.googledomains.com.",
    "ns-cloud-c3.googledomains.com.",
    "ns-cloud-c4.googledomains.com.",
  ]
  ttl = "21600"
}

resource "aws_route53_record" "phac-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "phac.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-cloud-e1.googledomains.com.",
    "ns-cloud-e2.googledomains.com.",
    "ns-cloud-e3.googledomains.com.",
    "ns-cloud-e4.googledomains.com.",
  ]
  ttl = "21600"
}

resource "aws_route53_record" "aspc-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "aspc.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-cloud-e1.googledomains.com.",
    "ns-cloud-e2.googledomains.com.",
    "ns-cloud-e3.googledomains.com.",
    "ns-cloud-e4.googledomains.com.",
  ]
  ttl = "21600"
}