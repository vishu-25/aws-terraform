# Provider Block
provider "aws" {
  region  = "us-east-1"
}

data "aws_availability_zones" "my_azones" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}