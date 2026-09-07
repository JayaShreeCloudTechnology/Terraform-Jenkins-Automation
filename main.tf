provider "aws" {
  region = "us-east-1"
}

# EC2 Instance
resource "aws_instance" "foo" {
  ami           = "ami-081b0a6eac00b4f53" # us-east-1
  instance_type = "t3.micro"

  tags = {
    Name = "TF-Instance"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "demo" {
  bucket = "terraform-demo-bucket-2026-12345-hyd-cloud-demohyddd"

  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}
