provider "aws" {
  region = "ap-south-1"
}

# EC2 Instance
resource "aws_instance" "foo" {
  ami           = "ami-035827357e3c7e810" # ap-south-1
  instance_type = "t3.micro"

  tags = {
    Name = "TF-Instance"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "demo" {
  bucket = "terraform-demo-bucket-2026-12345-hyd"

  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}
