# ==============================================================================
# NON-COMPLIANT RESOURCES (For Sentinel Fail / Mock Testing)
# ==============================================================================

resource "aws_instance" "rogue_node" {
  ami               = "ami-0c55b159cbfafe1f0"
  instance_type     = "t4.micro"
  availability_zone = "eu-east-1b"

  tags = {
    Name = "SovereignNode"
  }
}

resource "aws_s3_bucket" "illegal_storage" {
  bucket = "sovereign-compliance-storage-bucket"

  tags = {
    Environment = "Production"
  }
}

# ==============================================================================
# COMPLIANT RESOURCES (For Sentinel Pass Testing)
# ==============================================================================

resource "aws_instance" "app_server" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t3.micro"

  root_block_device {
    encrypted = true
  }

  tags = {
    Name = "Sentinel-Test-Instance"
  }
}

resource "aws_s3_bucket" "app_storage" {
  bucket = "my-eu-west-sentinel-bucket-12345"

  tags = {
    Name = "Sentinel-Test-Bucket"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "app_storage" {
  bucket = aws_s3_bucket.app_storage.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "app_storage" {
  bucket = aws_s3_bucket.app_storage.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
