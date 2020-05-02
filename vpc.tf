#     __      __  _____     _____ 
#     \ \    / / |  __ \   / ____|
#      \ \  / /  | |__) | | |     
#       \ \/ /   |  ___/  | |     
#        \  /    | |      | |____ 
#         \/     |_|       \_____|
#                             

resource "aws_vpc" "this" {
  
  cidr_block = var.cidr_block

  tags = {
    "Name" = "${var.name}-vpc"
  }
          
}