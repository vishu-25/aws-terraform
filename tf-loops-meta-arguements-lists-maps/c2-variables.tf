variable "aws_region" {
  description = "Region in which AWS Resources are made"
  type = string
  default = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}

variable "instance_keypair" {
  description = "RSA key for SSH"
  type = string
  default = "terraform-aws"
}

variable "instance_type_list" {
  description = "EC2 instance type list"
  type = list(string)
  default = [ "t2.micro" , "t2.small" , "t2.large" ]
}

variable "instance_type_map" {
  description = "EC2 instance type map"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "test" = "t2.small"
    "prod" = "t2.large"
  }
}