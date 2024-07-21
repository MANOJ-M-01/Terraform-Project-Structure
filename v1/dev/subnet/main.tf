# resource "aws_subnet" "private" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = var.subnet_cidr
#   tags = {
#     Name = "${var.env}-subnet"
#   }
# }


data "terraform_remote_state" "vpc"{
  backend = "local"
  config = {
    path = "../vpc/.terraform.tfstate"
  }
}