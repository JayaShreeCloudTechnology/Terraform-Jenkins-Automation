provider "aws" {
  region = "ap-south-1"
}

# EC2 Instance
resource "aws_instance" "foo" {
  ami           = "ami-01a00762f46d584a1" # ap-south-1
  instance_type = "t3.micro"

  tags = {
    Name = "TF-Instance"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "demo" {
  bucket = "cloudvision-bucket-hyd-2027"

  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test-vpc"
  }
}
