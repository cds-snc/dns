resource "aws_route53_zone" "alpha-canada-ca-public" {
  name    = "alpha.canada.ca"
  comment = ""

  tags = {
    Project = "dns"
  }
}

output "alpha-canada-ca-ns" {
  value = aws_route53_zone.alpha-canada-ca-public.name_servers
}

resource "aws_route53_record" "alpha-canada-ca-alias" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "alpha.canada.ca"
  type    = "A"
  alias {
    name                   = "d188wm8umhgzev.cloudfront.net"
    zone_id                = "Z2FDTNDATAQYW2"
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "_b3259586aedbdb670a1126167ef4fad9-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_b3259586aedbdb670a1126167ef4fad9.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "_86256a6d6c75bfd5e57ca09b9f3d51b8.kirrbxfjtw.acm-validations.aws"
  ]
  ttl = "300"

}

resource "aws_route53_record" "_dbb14456ed8ab3deed1f05507ff40373-alpha-canada-ca-CNAME" {
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id
  name    = "_dbb14456ed8ab3deed1f05507ff40373.alpha.canada.ca"
  type    = "CNAME"
  records = [
    "_900ac2c0ff88c1899ffb3e47cd4b42c8.wggjkglgrm.acm-validations.aws."
  ]
  ttl = "300"

}
