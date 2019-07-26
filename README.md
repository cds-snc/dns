# CDS DNS Configuration

With thanks to our friends at [18f](https://github.com/18F) for the [inspiration](https://github.com/18F/dns), this repository is a collection of Terraform scripts for configuring DNS for domains managed by CDS.

Currently this is limited to managing subdomains of *.cds-snc.ca.  In future, we will expand to include the cdssandbox.xyz domain.

## Why would I need this?

Do you want a pretty URL like `something.cds-snc.ca` for your cool new project?  This is how you do that.

## Making DNS requests

To request a new subdomain, create a `aws_route53_record` terraform entry and submit a pull request.  A member of the Platform team should review the change and approve it.

On merge, changes are deployed to Route53 automatically by a CircleCI job.

## Examples

Subdomain with a CNAME record directing traffic to a Cloudfront endpoint:
```
resource "aws_route53_record" "wildcard-rescheduler-cds-snc-ca-CNAME" {
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "*.rescheduler.cds-snc.ca"
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
    zone_id = "${aws_route53_zone.cds-snc-ca-public.zone_id}"
    name    = "ebrief.cds-snc.ca"
    type    = "A"
    records = [
        "52.237.20.235"
    ]
    ttl     = "300"

}
```

