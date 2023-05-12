resource "aws_route53_record" "cdn-design-system-alpha-canada-ca-NS" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "cdn.design-system.alpha.canada.ca"
  type    = "NS"
  records = [
    "ns-1114.awsdns-11.org",
    "ns-830.awsdns-39.net",
    "ns-2010.awsdns-59.co.uk",
    "ns-111.awsdns-13.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "design-system-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "design-system.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "cds-design-snc.netlify.app"
  ]
  ttl = "300"
}

resource "aws_route53_record" "systeme-design-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "systeme-design.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "cds-design-snc.netlify.app"
  ]
  ttl = "300"
}
