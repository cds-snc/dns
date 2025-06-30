resource "aws_route53_record" "gcdigital-ca-A" {
  zone_id = aws_route53_zone.gcdigital-ca-public.zone_id
  name    = "gcdigital.ca"
  type    = "A"
  records = ["184.168.221.58"]
  ttl     = 300
}

resource "aws_route53_record" "gcdigital-ca-MX" {
  zone_id = aws_route53_zone.gcdigital-ca-public.zone_id
  name    = "gcdigital.ca"
  type    = "MX"
  records = [
    "1 aspmx.l.google.com.gcdigital.ca.",
    "5 alt1.aspmx.l.google.com.gcdigital.ca.",
    "5 alt2.aspmx.l.google.com.gcdigital.ca.",
    "10 aspmx2.googlemail.com.gcdigital.ca.",
    "10 aspmx3.googlemail.com.gcdigital.ca.",
  ]
  ttl = "3600"
}

resource "aws_route53_record" "gcdigital-ca-TXT" {
  zone_id = aws_route53_zone.gcdigital-ca-public.zone_id
  name    = "gcdigital.ca"
  type    = "TXT"
  records = [
    "v=spf1 include:_spf.google.com ~all",
    "google-site-verification=lLwNix6L6JswxsfIH6g_daOGy0hkTUw0Cc4aeFSLIH8"
  ]
  ttl = "3600"
}

resource "aws_route53_record" "_domainconnect-gcdigital-ca-CNAME" {
  zone_id = aws_route53_zone.gcdigital-ca-public.zone_id
  name    = "_domainconnect.gcdigital.ca"
  type    = "CNAME"
  records = ["_domainconnect.gd.domaincontrol.com.gcdigital.ca."]
  ttl     = 3600
}

resource "aws_route53_record" "ftp-gcdigital-ca-CNAME" {
  zone_id = aws_route53_zone.gcdigital-ca-public.zone_id
  name    = "ftp.gcdigital.ca"
  type    = "CNAME"
  records = ["gcdigital.ca."]
  ttl     = 3600

}

resource "aws_route53_record" "www-gcdigital-ca-CNAME" {
  zone_id = aws_route53_zone.gcdigital-ca-public.zone_id
  name    = "www.gcdigital.ca"
  type    = "CNAME"
  records = ["gcdigital.ca."]
  ttl     = 3600

}