# alpha.canada.ca et al

## CDS DNS as a Service

With thanks to our friends at [18f](https://github.com/18F) for the [inspiration](https://github.com/18F/dns), this repository is a collection of Terraform scripts for configuring DNS for domains managed by CDS.

Currently, we are managing:

- _*.cds-snc.ca_
- _*cdssandbox.xyz_
- _*.alpha.canada.ca_.

### Why would I need this?

Do you want a pretty URL like `notification.alpha.canada.ca` for your cool new project?  This is how you do that.

### Making DNS requests

To request a new subdomain, create a `aws_route53_record` terraform entry and submit an [issue](https://github.com/cds-snc/dns/issues/new).  A member of the Platform team will review the request and either approve it, or circle back with additional questions.

We are investigating how to make this easier, but if anyone wants to help out, please reach out to platform-sre-security-support@cds-snc.ca

### Examples

Subdomain with a CNAME record directing traffic to a Cloudfront endpoint:

```hcl
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

```hcl
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

---

## SNC DNS en tant que service

Avec nos remerciements à nos amis de [18f](https://github.com/18F) pour l'[inspiration](https://github.com/18F/dns), ce dépôt est une collection de scripts Terraform pour la configuration des DNS pour les domaines gérés par le SNC.

Pour le moment, nous gérons les domaines:

- _*.cds-snc.ca_
- _*cdssandbox.xyz_
- _*.alpha.canada.ca_.

### Pourquoi en aurais-je besoin?

Vous voulez une jolie URL comme `notification.alpha.canada.ca` pour votre nouveau projet ?  C'est comme ça qu'il faut faire.

### Ajouter des enregistrements DNS

Pour demander un nouveau sous-domaine, créez une entrée Terraform `aws_route53_record` et soumettez un [enjeu (issue)](https://github.com/cds-snc/dns/issues/new).
Un membre de l'équipe de la plate-forme examinera la demande et l'approuvera ou reviendra avec des questions supplémentaires.
### Exemples

Sous-domaine avec un enregistrement `CNAME` dirigeant le trafic vers un point de terminaison CloudFront :

```hcl
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

Sous-domaine avec un enregistrement `A` dirigeant le trafic vers une adresse IP :

```hcl
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
