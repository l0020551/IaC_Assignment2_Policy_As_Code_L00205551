terraform {
  required_version = ">= 1.5.0"

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

  #backend "local" {}
}


### HCP
# terraform {
#   required_version = "1.17.2"

#   cloud {

#     organization = "L00205551"

#     workspaces {
#       name = "TestSentinelPlan"
#     }
#   }
# }