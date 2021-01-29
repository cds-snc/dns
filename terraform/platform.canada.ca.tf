resource "aws_route53_zone" "platform-canada-ca-public" {
  name    = "platform.canada.ca"
  comment = ""

  tags = {
    Project = "dns"
  }
}

output "platform-canada-ca-ns" {
  value = aws_route53_zone.platform-canada-ca-public.name_servers
}

resource "aws_route53_zone" "plateforme-canada-ca-public" {
  name    = "plateforme.canada.ca"
  comment = ""

  tags = {
    Project = "dns"
  }
}

output "plateforme-canada-ca-ns" {
  value = aws_route53_zone.plateforme-canada-ca-public.name_servers
}
