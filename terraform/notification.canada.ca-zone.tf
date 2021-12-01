resource "aws_route53_zone" "notification-canada-ca-public" {
  name    = "notification.canada.ca"
  comment = ""

  tags = {
    Project = "dns"
  }
}

output "notification-canada-ca-ns" {
  value = aws_route53_zone.notification-canada-ca-public.name_servers
}

locals {
  notification_alb       = "notification-production-alb-1685085140.ca-central-1.elb.amazonaws.com"
  notification_zone_id   = "ZQSVJUPU6J1EY"
  api_lambda_app_gateway = "d-3hv37fqgbg.execute-api.ca-central-1.amazonaws.com"
}

resource "aws_route53_record" "notification-canada-ca-ALIAS" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "notification.canada.ca"
  type    = "A"

  alias {
    name                   = local.notification_alb
    zone_id                = local.notification_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "api-notification-canada-ca-A-k8s" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "api.notification.canada.ca"
  type    = "CNAME"
  records = [local.notification_alb]
  ttl     = "300"
  weighted_routing_policy {
    weight = 100
  }
}

resource "aws_route53_record" "api-notification-canada-ca-A-lambda" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "api.notification.canada.ca"
  type    = "CNAME"
  records = [local.api_lambda_app_gateway]
  ttl     = "300"
  weighted_routing_policy {
    weight = 0
  }
}

resource "aws_route53_record" "api-lambda-notification-canada-ca-A" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "api-lambda.notification.canada.ca"
  type    = "CNAME"
  records = [
    local.api_lambda_app_gateway
  ]
  ttl = "300"
}

resource "aws_route53_record" "document-notification-canada-ca-A" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "document.notification.canada.ca"
  type    = "CNAME"
  records = [
    local.notification_alb
  ]
  ttl = "300"
}

resource "aws_route53_record" "api-document-notification-canada-ca-A" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "api.document.notification.canada.ca"
  type    = "CNAME"
  records = [
    local.notification_alb
  ]
  ttl = "300"
}

resource "aws_route53_record" "www-notification-canada-ca-CNAME" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "www.notification.canada.ca"
  type    = "CNAME"
  records = [
    local.notification_alb
  ]
  ttl = "300"
}

resource "aws_route53_record" "documentation-notification-canada-ca-CNAME" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "documentation.notification.canada.ca"
  type    = "CNAME"
  records = [
    local.notification_alb
  ]
  ttl = "300"
}

resource "aws_route53_record" "doc-notification-canada-ca-CNAME" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "doc.notification.canada.ca"
  type    = "CNAME"
  records = [
    local.notification_alb
  ]
  ttl = "300"
}

resource "aws_route53_record" "notification-canada-ca-ACM-cname" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "_2115a5004ab7895234c60254e152046b.notification.canada.ca"
  type    = "CNAME"
  records = [
    "_aaacd89cd470de0970c70c7ab1b7d4d5.wggjkglgrm.acm-validations.aws."
  ]
  ttl = "300"
}

resource "aws_route53_record" "document-notification-canada-ca-ACM-cname" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "_db43d1cf891afd4671fb913d18ef0a0e.document.notification.canada.ca"
  type    = "CNAME"
  records = [
    "_130ea19fa1fdd9e59b7632fbac0d7e00.wggjkglgrm.acm-validations.aws."
  ]
  ttl = "300"
}

resource "aws_route53_record" "assets-notification-canada-ca-ACM-cname" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "_4e30c74d7459e0d63bdcdaac7a57fdcf.assets.notification.canada.ca"
  type    = "CNAME"
  records = [
    "_2da9b84f7e094fd64c8930cffe8d9842.wggjkglgrm.acm-validations.aws."
  ]
  ttl = "300"
}

resource "aws_route53_record" "assets-notification-canada-ca-cname" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "assets.notification.canada.ca"
  type    = "CNAME"
  records = [
    "d1spq0ojswv1dj.cloudfront.net"
  ]
  ttl = "300"
}

resource "aws_route53_record" "dkim1-notification-canada-ca-CNAME" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "wrs6wsp65k764hnaouax5t66vfqrbrst._domainkey.notification.canada.ca"
  type    = "CNAME"
  records = [
    "wrs6wsp65k764hnaouax5t66vfqrbrst.dkim.amazonses.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "dkim2-notification-canada-ca-CNAME" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "wrtaqi2wdu42zqjzyf3ikn46kzos4f76._domainkey.notification.canada.ca"
  type    = "CNAME"
  records = [
    "wrtaqi2wdu42zqjzyf3ikn46kzos4f76.dkim.amazonses.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "dkim3-notification-canada-ca-CNAME" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "h2d5mnabqwlnowww7rkgpoagtrxt7d4z._domainkey.notification.canada.ca"
  type    = "CNAME"
  records = [
    "h2d5mnabqwlnowww7rkgpoagtrxt7d4z.dkim.amazonses.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "notification-canada-ca-SPF" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "notification.canada.ca"
  type    = "TXT"
  records = [
    "v=spf1 include:amazonses.com -all",
    # Used for https://postmaster.google.com
    "google-site-verification=KMFWVel40xicbDXojkXz_1B2gBlPFSqF69cVdH_dfn0"
  ]
  ttl = "300"
}

resource "aws_route53_record" "notification-canada-ca-DMARC" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "_dmarc.notification.canada.ca"
  type    = "TXT"
  records = [
    "v=DMARC1; p=reject; sp=reject; pct=100; rua=mailto:dmarc@cyber.gc.ca"
  ]
  ttl = "300"
}

resource "aws_route53_record" "amazonses-notification-canada-ca-TXT" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "_amazonses.notification.canada.ca"
  type    = "TXT"
  records = [
    # ca-central-1
    "Ohfl/Syh3ZT5U/7IKELTCXIRaqI42ZJiw0HiUQoCHww=",
    # us-east-1 for inbound emails
    "FHX+PBM3ip2HfDeSXs3WpEuQZydluvX9VpOdBKj0dgU="
  ]
  ttl = "300"
}

resource "aws_route53_record" "amazonses-mail-from-notification-canada-ca-TXT" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "bounce.notification.canada.ca"
  type    = "TXT"
  records = [
    "v=spf1 include:amazonses.com -all"
  ]
  ttl = "300"
}

resource "aws_route53_record" "amazonses-mail-from-notification-canada-ca-MX" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "bounce.notification.canada.ca"
  type    = "MX"
  records = [
    "10 feedback-smtp.ca-central-1.amazonses.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "amazonses-inbound-notification-canada-ca-MX" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "notification.canada.ca"
  type    = "MX"
  records = [
    "10 inbound-smtp.us-east-1.amazonaws.com"
  ]
  ttl = "300"
}

resource "aws_route53_record" "smtp-notification-canada-ca-NS" {
  zone_id = aws_route53_zone.notification-canada-ca-public.zone_id
  name    = "smtp.notification.canada.ca"
  type    = "NS"
  records = [
    "ns-125.awsdns-15.com",
    "ns-1193.awsdns-21.org",
    "ns-1879.awsdns-42.co.uk",
    "ns-606.awsdns-11.net"
  ]
  ttl = "300"
}
