# CDS DNS as a Service

With thanks to our friends at [18f](https://github.com/18F) for the [inspiration](https://github.com/18F/dns), this repository is a collection of Terraform scripts for configuring DNS for domains managed by CDS.

~~Currently this is limited to managing subdomains of *.cds-snc.ca.  In future, we will expand to include the cdssandbox.xyz domain.~~
Currently, we are managing *.cds-snc.ca, *cdssandbox.xyz, and *.alpha.canada.ca.

## Why would I need this?

Do you want a pretty URL like `notification.alpha.canada.ca` for your cool new project?  This is how you do that.

## Making DNS requests

To request a new subdomain, create a `aws_route53_record` terraform entry and submit an ~~pull request~~ issue.  A member of the Platform team will review the request and either approve it, or circle back with additional questions.

We are investigating how to make this easier, but if anyone wants to help out, please reach out to john.obrien@cds-snc.ca

## Examples

Subdomain with a CNAME record directing traffic to a Cloudfront endpoint:
```
resource "aws_route53_record" "rescheduler-cds-snc-ca-CNAME" {
    zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
    name    = "rescheduler.cds-snc.ca"
    type    = "CNAME"
    records = [
        "d31g0redbbnj2z.cloudfront.net"
    ]
    ttl     = "300"

}
```

Subdomain with an A record directing traffic to an IP address:
```
resource "aws_route53_record" "ebrief-cds-snc-ca-A" {
    zone_id = aws_route53_zone.cds-snc-ca-public.zone_id
    name    = "ebrief.cds-snc.ca"
    type    = "A"
    records = [
        "52.237.20.235"
    ]
    ttl     = "300"

}
```

