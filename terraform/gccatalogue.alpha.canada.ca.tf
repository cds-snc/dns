resource "aws_route53_record" "gccatalogue-alpha-canada-ca-CNAME" { 
  zone_id = aws_route53_zone.alpha-canada-ca-public.zone_id 
  name    = "gccatalogue.alpha.canada.ca" 
  type    = "CNAME" 
  records = [ 
    "gcdigitalpolicy.github.io" 
  ] 
  ttl = "300" 
} 
