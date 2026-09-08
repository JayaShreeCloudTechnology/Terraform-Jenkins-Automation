provider "aws" {
  region = "ap-southeast-1"
}

# EC2 Instance
resource "aws_instance" "foo" {
  ami           = "ami-02159ad7e38d562f2" # ap-southeast-1
  instance_type = "t3.micro"

  tags = {
    Name = "TF-Instance"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "demo" {
  bucket = "terraform-jenkins-bucket-2026"

  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terraform-vpc"
  }
}
