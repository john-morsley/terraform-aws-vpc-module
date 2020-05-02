#     __      __  _____     _____ 
#     \ \    / / |  __ \   / ____|
#      \ \  / /  | |__) | | |     
#       \ \/ /   |  ___/  | |     
#        \  /    | |      | |____ 
#         \/     |_|       \_____|
#                             

resource "aws_vpc" "this" {
  
  cidr_block = var.cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = true
  
  tags = {
    "Name" = "${var.name}-vpc"
  }
          
}