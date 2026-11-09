resource "aws_instance" "rogue_node" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with a valid AMI ID for your target operating system
  instance_type = "t2.micro"


  availability_zone = "eu-west-1b"

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


resource "aws_s3_bucket_region" "storage_location" {
  bucket = aws_s3_bucket.illegal_storage.id
  region = "eu-west-1" 
}