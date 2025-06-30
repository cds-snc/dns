resource "aws_route53_zone" "gcdigital-ca-public" {
  name    = "gcdigital.ca"
  comment = ""

  tags = {
    Project = "dns"
  }
}

output "gcdigital-ca-ns" {
  value = aws_route53_zone.gcdigital-ca-public.name_servers
}