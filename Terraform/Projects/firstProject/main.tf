terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create an aws_instance
resource "aws_instance" "example" {
  ami = "ami-093252386d2d96929"  # Ubuntu 20.04 LTS us-east-1
  instance_type = "a1.medium"
}