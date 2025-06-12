# Terraform block defining AWS provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}



# Configure AWS region
provider "aws" {
  version = "~> 5.0"
  region  = "us-east-1"
}


# Create EC2 instance
resource "aws_instance" "demo_ec2" {
  ami           = "ami-051f7e7f6c2f40dc1"  # Amazon Linux 2 AMI for us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformEC2Instance"
  }
}


# Creating a custom VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}


# Creating an S3 bucket with tags
resource "aws_s3_bucket" "example" {
  bucket = "my-unique-tf-bucket-mani-001"  # <- Use a globally unique name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



