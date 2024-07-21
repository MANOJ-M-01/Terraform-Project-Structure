provider "aws" {
  profile = var.profile
  region  = var.region
}


resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = false
  enable_dns_hostnames = false

  tags = {
    Name = "dev-main"
  }
}

