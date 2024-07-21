resource "aws_subnet" "private" {
  vpc_id     = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "${var.env}-subnet"
  }
}


data "terraform_remote_state" "vpc" {
  backend = "local"
  config = {
    path = "../vpc/terraform.tfstate"
  }
}

# output "vpc" {
#   description = "vpc details"
#   value       = data.terraform_remote_state.vpc
# }
