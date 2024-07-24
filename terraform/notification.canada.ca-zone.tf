### THESE HAVE BEEN REMOVED FROM THE TERRAFORM CODEBASE ###
### TO MANAGE NOTIFICATION.CANADA.CA USE NOTIFICATION-TERRAFORM REPO ###

removed {
  from = aws_route53_zone.notification-canada-ca-public

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.notification-canada-ca-ALIAS

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.api-notification-canada-ca-A

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.lambda-api-notification-canada-ca-A

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.api-k8s-notification-canada-ca-A

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.api-lambda-notification-canada-ca-A

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.document-notification-canada-ca-A

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.api-document-notification-canada-ca-A

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.www-notification-canada-ca-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.www-notification-canada-ca-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.documentation-notification-canada-ca-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.doc-notification-canada-ca-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.notification-canada-ca-ACM-cname

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.document-notification-canada-ca-ACM-cname

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.api-notification-canada-ca-ACM-cname

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.assets-notification-canada-ca-ACM-cname

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.assets-notification-canada-ca-cname

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.dkim1-notification-canada-ca-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.dkim2-notification-canada-ca-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.dkim3-notification-canada-ca-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.dkim1-notification-canada-ca-us-east-1-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.dkim2-notification-canada-ca-us-east-1-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.dkim3-notification-canada-ca-us-east-1-CNAME

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.notification-canada-ca-SPF

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.notification-canada-ca-DMARC

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.amazonses-notification-canada-ca-TXT

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.amazonses-mail-from-notification-canada-ca-TXT

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.amazonses-mail-from-notification-canada-ca-MX

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.amazonses-inbound-notification-canada-ca-MX

  lifecycle {
    destroy = false
  }
}

removed {
  from = aws_route53_record.system-status-notification-canada-ca-cname

  lifecycle {
    destroy = false
  }
}