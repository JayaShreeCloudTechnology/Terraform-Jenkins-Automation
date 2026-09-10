provider "aws" {
<<<<<<< HEAD
  region = "ap-south-1"
=======
  region = "us-east-1"
>>>>>>> ab6069f (updated the main.tf & test file)
}

# EC2 Instance
resource "aws_instance" "foo" {
<<<<<<< HEAD
  ami           = "ami-01a00762f46d584a1" # ap-south-1
=======
  ami           = "ami-0b6d9d3d33ba97d99" # us-east-1
>>>>>>> ab6069f (updated the main.tf & test file)
  instance_type = "t3.micro"

  tags = {
    Name = "Ubuntu-Server"
  }
}

# S3 Bucket
resource "aws_s3_bucket" "demo" {
<<<<<<< HEAD
  bucket = "tcs-hyd-test-bucket-2027-100"
=======
  bucket = "hydtestbucket20261234"
>>>>>>> ab6069f (updated the main.tf & test file)

  tags = {
    Name        = "Terraform-S3"
    Environment = "Dev"
  }
}
# Create VPC
resource "aws_vpc" "demo-vpc" {
  cidr_block       = "11.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "test-vpc"
  }
}
