resource "aws_route53_record" "cds-snc-ca-MX" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "cds-snc.ca"
    type    = "MX"
    records = ["5 alt2.aspmx.l.google.com.", "5 alt1.aspmx.l.google.com.", "1 aspmx.l.google.com.", "10 alt3.aspmx.l.google.com.", "10 alt4.aspmx.l.google.com.", "15 2ucw6y27ggthkqfli3z6jt7ctyyzkkuij2gdrw4wwtvljx7tawbq.mx-verification.google.com."]
    ttl     = "1800"

}

resource "aws_route53_record" "scph0917-_domainkey-cds-snc-ca-TXT" {
    zone_id = "${aws_route53_zone.cds-snc-ca-zone.zone_id}"
    name    = "scph0917._domainkey.cds-snc.ca"
    type    = "TXT"
    records = ["\"v=DKIM1; k=rsa; h=sha256; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCrSPpQgQ4R+j3a/1PBCdnuw2Y0upCDmAaoNxkYFqhN35qLy1wA3Bba4abeTuKSxwAmxEN805YNPVp0FQ0Lv/B8ppsgyijv/riZvA/nHxWWoGCjofM+COlRjA+9+Us78hy1BPRKt+lgWMuW0t+UXrt055M3LXXOD9QH1IPvCHGifQIDAQAB\""]
    ttl     = "3600"

}