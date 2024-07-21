provider "aws" {
  profile = "manoj_admin"
  region  = var.region
}


module "vpc" {

  # source = "git@github.com:MANOJ-M-01/Terraform-Module-AWS_VPC.git?ref=0.1.0"
  source = "github.com/MANOJ-M-01/Terraform-Module-AWS_VPC?ref=0.1.2"

  env        = "dev"
  cidr_block = "10.0.0.0/16"
}
