resource "aws_route53_record" "digital-cds-snc-ca-NS" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "digital.cds-snc.ca"
    type    = "NS"
    records = [
        "ns-120.awsdns-15.com.", 
        "ns-952.awsdns-55.net.", 
        "ns-1266.awsdns-30.org.", 
        "ns-1783.awsdns-30.co.uk."
    ]
    ttl     = "300"

}