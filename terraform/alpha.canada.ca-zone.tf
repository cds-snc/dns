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

resource "aws_route53_record" "alpha-canada-ca-CNAME" {
    zone_id = "${aws_route53_zone.alpha-canada-ca-public.zone_id}"
    name    = "alpha.canada.ca"
    type    = "A"
    records = [
        "185.199.108.153",
        "185.199.109.153",
        "185.199.110.153",
        "185.199.111.153"
    ]
    ttl     = "300"

}
