resource "aws_route53_zone" "platform-canada-ca-public" {
  name    = "platform-plateforme.canada.ca"
  comment = ""

  tags = {
    Project = "dns"
  }
}

output "platform-canada-ca-ns" {
  value = aws_route53_zone.platform-canada-ca-public.name_servers
}
