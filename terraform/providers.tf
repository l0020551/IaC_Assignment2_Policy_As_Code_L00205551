# HCL implementation
# provider "aws" {
#   region                      = "eu-west-1"
#   access_key                  = "my Access key"
#   secret_key                  = "my Secret key"
#   skip_credentials_validation = true
#   skip_metadata_api_check     = true
#   skip_requesting_account_id  = true

#   default_tags {
#     tags = {
#       Environment = "dev"
#       ManagedBy   = "Terraform"
#     }
#   }
# }


provider "aws" {
  region                      = "eu-west-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  s3_use_path_style           = true

  endpoints {
    ec2 = "http://localstack:4566" # Connects via Docker network iac-net
    s3  = "http://localstack:4566"
    iam = "http://localstack:4566"
  }

  default_tags {
    tags = {
      Environment = "dev"
      ManagedBy   = "Terraform"
    }
  }
}
