terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "cds-dns-terraform-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
