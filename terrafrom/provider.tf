provider "aws" {
  region  = "us-east-1"
  profile = "pritam-dev"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
terraform {
  backend "s3" {
    bucket = "pritam-terraform-ot-ms-tfbackend"
    key    = "tfbackend"
    region = "us-east-1"
  }
}
