terraform {
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }

  backend "s3" {
    bucket = "my-company-tf-state"
    key    = "production/networks.tfstate"
    region = "eu-west-1"
  }
}