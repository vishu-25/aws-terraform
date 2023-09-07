terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
      }
    }
}

provider "aws" {
  profile = "default"
  region = "ap-south-1"
}

resource "aws_instance" "ec2demo" {
  ami = "ami-06f621d90fa29f6d0"
  instance_type = "t2.micro"
  tags =  {
    Nmae = "ec2-demo"
  }
}