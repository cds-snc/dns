resource "aws_route53_record" "cds-snc-ca-A" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "cds-snc.ca"
  type    = "A"

  alias {
    name                   = "s3-website-us-east-1.amazonaws.com"
    zone_id                = "Z3AQBSTGFYJSTF"
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "cds-snc-ca-MX" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "cds-snc.ca"
  type    = "MX"
  records = [
    "1 aspmx.l.google.com.",
    "5 alt1.aspmx.l.google.com.",
    "5 alt2.aspmx.l.google.com.",
    "10 alt3.aspmx.l.google.com.",
    "10 alt4.aspmx.l.google.com.",
    "15 2ucw6y27ggthkqfli3z6jt7ctyyzkkuij2gdrw4wwtvljx7tawbq.mx-verification.google.com."
  ]
  ttl = "1800"

}

# DMARC Policy, currently in audit mode, progress to reject mode after review.
resource "aws_route53_record" "_dmarc-cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "_dmarc.cds-snc.ca"
  type    = "TXT"
  records = [
    "v=DMARC1; p=none; sp=none; pct=100; rua=mailto:dmarc@cyber.gc.ca"
  ]
  ttl = "300"

}

resource "aws_route53_record" "cds-snc-ca-NS" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "cds-snc.ca"
  type    = "NS"
  records = [
    "ns-451.awsdns-56.com.",
    "ns-1359.awsdns-41.org.",
    "ns-1936.awsdns-50.co.uk.",
    "ns-711.awsdns-24.net."
  ]
  ttl = "172800"

}

resource "aws_route53_record" "cds-snc-ca-SOA" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "cds-snc.ca"
  type    = "SOA"
  records = [
    "ns-451.awsdns-56.com. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"
  ]
  ttl = "900"

}

# SES Domain ownership for IRCC account
resource "aws_route53_record" "_amazonses-cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "_amazonses.cds-snc.ca"
  type    = "TXT"
  records = [
    "K4JAa74M8w2vms1T3VFt4GTKY49WVxVAWXa85B2GGwg=",
    "rMQZgwOueQecO9q4zjkRsVbPLzwcWWBc+QGXukgqADc="
  ]
  ttl = "1800"

}

resource "aws_route53_record" "_c77e17ef5146ea6fd6ba71f12813c9dc-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "_c77e17ef5146ea6fd6ba71f12813c9dc.cds-snc.ca"
  type    = "CNAME"
  records = [
    "_e88f41d9935120137718f217c73c5389.tljzshvwok.acm-validations.aws."
  ]
  ttl = "300"

}

resource "aws_route53_record" "doxsxvr6k6upbjhr2ruxm4mqtrxiehuw-_domainkey-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "doxsxvr6k6upbjhr2ruxm4mqtrxiehuw._domainkey.cds-snc.ca"
  type    = "CNAME"
  records = [
    "doxsxvr6k6upbjhr2ruxm4mqtrxiehuw.dkim.amazonses.com"
  ]
  ttl = "1800"

}

resource "aws_route53_record" "google-_domainkey-cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "google._domainkey.cds-snc.ca"
  type    = "TXT"
  records = [
    "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCtW1wKg+eFHEMnD0ZKPm8Bhoe6PzRTHOQbGnaBXpJllbUYqEKBpmz/u+zribZqjUfD8aFzZGt5SHGZAPXBUD0weiGuJFtuFrKDGQqknjxIaknMZrTXbre0bSw7lUUAb/b3qXvmQ6nZUOCaHvUJz09vZDGbKodhgj21hoRsLh4BeQIDAQAB"
  ]
  ttl = "300"

}

resource "aws_route53_record" "huaraq4dvcwl4dfjicrvjuyhod2zgyvz-_domainkey-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "huaraq4dvcwl4dfjicrvjuyhod2zgyvz._domainkey.cds-snc.ca"
  type    = "CNAME"
  records = [
    "huaraq4dvcwl4dfjicrvjuyhod2zgyvz.dkim.amazonses.com"
  ]
  ttl = "1800"

}

resource "aws_route53_record" "scph0917-_domainkey-cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "scph0917._domainkey.cds-snc.ca"
  type    = "TXT"
  records = [
    "v=DKIM1; k=rsa; h=sha256; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCrSPpQgQ4R+j3a/1PBCdnuw2Y0upCDmAaoNxkYFqhN35qLy1wA3Bba4abeTuKSxwAmxEN805YNPVp0FQ0Lv/B8ppsgyijv/riZvA/nHxWWoGCjofM+COlRjA+9+Us78hy1BPRKt+lgWMuW0t+UXrt055M3LXXOD9QH1IPvCHGifQIDAQAB"
  ]
  ttl = "3600"

}

resource "aws_route53_record" "vqrxkdrwqioudvaw3rrvwb2c6yre5673-_domainkey-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "vqrxkdrwqioudvaw3rrvwb2c6yre5673._domainkey.cds-snc.ca"
  type    = "CNAME"
  records = [
    "vqrxkdrwqioudvaw3rrvwb2c6yre5673.dkim.amazonses.com"
  ]
  ttl = "1800"

}

# DKIM records for IRCC account
resource "aws_route53_record" "jmdsjkhll6xcr45eceudowr3i5biw7m4-_domainkey-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "jmdsjkhll6xcr45eceudowr3i5biw7m4._domainkey.cds-snc.ca"
  type    = "CNAME"
  records = [
    "jmdsjkhll6xcr45eceudowr3i5biw7m4.dkim.amazonses.com"
  ]
  ttl = "1800"

}

# DKIM records for IRCC account
resource "aws_route53_record" "k64c4rhiqy2utki3pdklkmx4yddgfsvz-_domainkey-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "k64c4rhiqy2utki3pdklkmx4yddgfsvz._domainkey.cds-snc.ca"
  type    = "CNAME"
  records = [
    "k64c4rhiqy2utki3pdklkmx4yddgfsvz.dkim.amazonses.com"
  ]
  ttl = "1800"

}

# DKIM records for IRCC account
resource "aws_route53_record" "npuzzfyyhodvef3vwrj6qdu4tjqkw5ps-_domainkey-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "npuzzfyyhodvef3vwrj6qdu4tjqkw5ps._domainkey.cds-snc.ca"
  type    = "CNAME"
  records = [
    "npuzzfyyhodvef3vwrj6qdu4tjqkw5ps.dkim.amazonses.com"
  ]
  ttl = "1800"

}

resource "aws_route53_record" "cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "cds-snc.ca"
  type    = "TXT"
  records = [
    "MS=ms61032497",
    "v=spf1 include:_spf.google.com include:email.freshdesk.com ~all",
    "apple-domain-verification=4YW6F7vBgCWOVoTh",
    "miro-verification=b613aeb17bf7dfe250cf22d5483c1a352ea0c2f1"
  ]
  ttl = "3600"

}

# Freshdesk assistance portal
resource "aws_route53_record" "assistance-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "assistance.cds-snc.ca"
  type    = "CNAME"
  records = [
    "fdus-lb1-d59.freshdesk.com",
  ]
  ttl = "3600"

}

resource "aws_route53_record" "assistance-cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "fdkey.assistance.cds-snc.ca"
  type    = "TXT"
  records = [
    "b0207575c0143a0db62f4aa76fa88a80 "
  ]
  ttl = "3600"

}

# Freshdesk Notify portal
resource "aws_route53_record" "notification-assistance-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "notification.assistance.cds-snc.ca"
  type    = "CNAME"
  records = [
    "fdus-lb1-d60.freshdesk.com",
  ]
  ttl = "3600"

}

resource "aws_route53_record" "notification-assistance-cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "fdkey.notification.assistance.cds-snc.ca"
  type    = "TXT"
  records = [
    "b0207575c0143a0db62f4aa76fa88a80  "
  ]
  ttl = "3600"

}

# Freshdesk COVID Alert portal
resource "aws_route53_record" "covid-assistance-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "covid.assistance.cds-snc.ca"
  type    = "CNAME"
  records = [
    "fdus-lb27-d35.freshdesk.com",
  ]
  ttl = "3600"

}

resource "aws_route53_record" "covid-assistance-cds-snc-ca-TXT" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "fdkey.covid.assistance.cds-snc.ca"
  type    = "TXT"
  records = [
    "b0207575c0143a0db62f4aa76fa88a80"
  ]
  ttl = "3600"

}

# Freshdesk DKIM records
resource "aws_route53_record" "freshdesk-dkim-01-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "xhlsf._domainkey.cds-snc.ca"
  type    = "CNAME"
  records = [
    "wl2201s1.domainkey.freshemail.io"
  ]
  ttl = "1800"
}

resource "aws_route53_record" "freshdesk-dkim-02-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "epvl8._domainkey.cds-snc.ca"
  type    = "CNAME"
  records = [
    "wl2201s2.domainkey.freshemail.io"
  ]
  ttl = "1800"
}

resource "aws_route53_record" "freshdesk-dkim-03-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "pgl0m._domainkey.cds-snc.ca"
  type    = "CNAME"
  records = [
    "wl2201s3.domainkey.freshemail.io"
  ]
  ttl = "1800"
}

resource "aws_route53_record" "freshdesk-dkim-04-cds-snc-ca-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "fwdkim.cds-snc.ca"
  type    = "CNAME"
  records = [
    "spfmx1.domainkey.freshemail.io"
  ]
  ttl = "1800"
}

# status page
resource "aws_route53_record" "status-cds-snc-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "status-statut.cds-snc.ca"
  type    = "CNAME"
  records = [
    "cds-snc.github.io"
  ]
  ttl = "1800"
}

# internal tech support 
resource "aws_route53_record" "support-cds-snc-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "support.cds-snc.ca"
  type    = "CNAME"
  records = [
    "canadiandigitalservice.happyfox.com"
  ]
  ttl = "1800"
}

# cloud spend page
resource "aws_route53_record" "cloud-spend-cds-snc-CNAME" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name    = "cloud-spend.cds-snc.ca"
  type    = "CNAME"
  records = [
    "cds-snc.github.io"
  ]
  ttl = "1800"
}


resource "aws_route53_record" "_github-challenge-cds-snc-org" {
  zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
  name = "_github-challenge-cds-snc-org"
  type = "TXT"
  records = [
    "05a2344682"
  ]
  ttl = "1800"
}