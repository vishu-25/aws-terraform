locals {
  owners = var.business_division
  enviroment = var.enviroment
  name = "${var.business_division}-${var.enviroment}"
  common_tags = {
    owners = local.owners
    enviroment = local.enviroment
  }
}