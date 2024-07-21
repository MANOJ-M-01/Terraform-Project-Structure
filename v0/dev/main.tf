resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = false
  enable_dns_hostnames = false

  tags = {
    Name = "${var.env}-main"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "${var.env}-subnet"
  }
}
