resource "aws_route53_zone" "design_system_canada_ca" {
  name = "design-system.canada.ca"
}

resource "aws_route53_zone" "systeme_design_canada_ca" {
  name = "systeme-design.canada.ca"
}

# NS records will be managed by Route 53 after zone creation.
# Add specific records here once the zones are created and nameservers are known.

