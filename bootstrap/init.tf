terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "backend" {
  bucket = "cds-dns-terraform-state"
  region = "us-east-1"

  versioning {
    enabled = true
  }
}
