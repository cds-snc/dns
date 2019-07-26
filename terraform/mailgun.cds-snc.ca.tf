resource "aws_route53_record" "mailgun-cds-snc-ca-TXT" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "mailgun.cds-snc.ca"
    type    = "TXT"
    records = [
        "v=spf1 include:mailgun.org ~all"
    ]
    ttl     = "300"

}

resource "aws_route53_record" "pic-_domainkey-mailgun-cds-snc-ca-TXT" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "pic._domainkey.mailgun.cds-snc.ca"
    type    = "TXT"
    records = [
        "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDqd5+hPaqvz/V7CKwQCIKvvV4N0slJV/R7KfF91VS+G8RLJisWpWl80ixKVm2RuGYJFJqgzLGwdd8uHL5v+HiJK5fi5+unr/1zLBtrg9prZntFxRMm2vp839LV6kYGChKaL3dIhRAEEDt1iU4j45SVgOQc37Dgyf7GAdVjHp5EVQIDAQAB"
    ]
    ttl     = "300"

}