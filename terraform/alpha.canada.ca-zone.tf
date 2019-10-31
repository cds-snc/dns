resource "aws_route53_zone" "alpha-canada-ca-public" {
    name       = "alpha.canada.ca"
    comment    = ""

    tags = {
        Project = "dns"
    }
}

output "alpha-canada-ca-ns" {
  value="${aws_route53_zone.alpha-canada-ca-public.name_servers}"
}

resource "aws_route53_record" "alpha-canada-ca-A" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "alpha.canada.ca"
    type    = "A"
    alias {
        name                   = "d2aopswi6c2sr6.cloudfront.net"
        zone_id                = "Z2FDTNDATAQYW2"
        evaluate_target_health = true
    }

    ttl     = "60"

}

resource "aws_route53_record" "_b3259586aedbdb670a1126167ef4fad9-alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "_b3259586aedbdb670a1126167ef4fad9.alpha.canada.ca"
    type    = "CNAME"
    records = [
        "_86256a6d6c75bfd5e57ca09b9f3d51b8.kirrbxfjtw.acm-validations.aws"
    ]
    ttl     = "300"

}