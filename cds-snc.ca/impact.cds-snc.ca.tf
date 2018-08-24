resource "aws_route53_record" "impact-cds-snc-ca-TXT" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "impact.cds-snc.ca"
    type    = "TXT"
    records = ["\"v=spf1 include:mailgun.org ~all\""]
    ttl     = "300"

}

resource "aws_route53_record" "mx-_domainkey-impact-cds-snc-ca-TXT" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "mx._domainkey.impact.cds-snc.ca"
    type    = "TXT"
    records = ["\"k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDV8+/5WnTMuKleq2ZAMFvVpW9Cb/f/H5YFdcfN5IxiRZ5GqIMInMd+ZAr0lnEbEGMN49Xh/Zp/4306TwYtNpZDOsmExqTG49ptDURue7n63rJ8XFkawuZ9AGTgVfjLEnJtmk/b0idWEhvCg2HSH4l7J2bSr7QS5RiQ2nNq+0UxsQIDAQAB\""]
    ttl     = "300"

}