provider "aws" {
  profile = "manoj_admin"
  region  = "us-east-2"
}


resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = false
  enable_dns_hostnames = false

  tags = {
    Name = "dev-main"
  }
}

