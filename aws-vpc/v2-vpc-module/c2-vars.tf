variable "aws_region" {
  description = "Region in which AWS Resources are made"
  type = string
  default = "ap-south-1"
}

variable "enviroment" {
  description = "Enviroment Variable used as a prefix"
  type = string
  default = "dev"
}

variable "business_division" {
  description = "Business Divsion in a large org"
  type = string
  default = "HR"
}