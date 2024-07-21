provider "aws" {
  profile = "manoj_admin"
  region  = var.region
}


module "vpc" {
  source = "../../../modules/vpc"

  env        = "dev"
  cidr_block = "10.0.0.0/16"
}
