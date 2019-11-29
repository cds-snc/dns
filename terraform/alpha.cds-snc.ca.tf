resource "aws_route53_record" "alpha-cds-snc-ca-ns" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "alpha.cds-snc.ca"
  type    = "NS"
  ttl     = "30"

  records = [
    "ns-626.awsdns-14.net",
    "ns-186.awsdns-23.com",
    "ns-2019.awsdns-60.co.uk",
    "ns-1252.awsdns-28.org"
  ]
}

resource "aws_route53_record" "notification-alpha-cds-snc-ca-A" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "notification.alpha.cds-snc.ca"
  type    = "A"
  records = [
    "35.203.112.92"
  ]
  ttl     = "300"
   
}
