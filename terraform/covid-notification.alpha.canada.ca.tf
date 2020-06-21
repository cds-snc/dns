resource "aws_route53_record" "covid-notification-alpha-canada-ca-NS" {
    zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
    name    = "covid-notification.alpha.canada.ca"
    type    = "NS"
    records = [
        "ns-1714.awsdns-22.co.uk.",
        "ns-93.awsdns-11.com.",
        "ns-1334.awsdns-38.org.",
        "ns-842.awsdns-41.net."
    ]
    ttl     = "300"
}