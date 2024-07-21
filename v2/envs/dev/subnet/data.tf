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