terraform {
  required_version = "~>1.5.0"
    required_providers {
      aws = {
        version = "~>5.2.0"
        source = "hashicorp/aws"
      }
    }
  backend "s3" {
    bucket = "terraform-modules-tato"
    key = "terrafpr.tfstate"
    region = "us-east-1"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = {
      environment = var.environment
    }
  }
}