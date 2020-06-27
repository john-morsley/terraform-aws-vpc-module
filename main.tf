#     __      __  _____     _____ 
#     \ \    / / |  __ \   / ____|
#      \ \  / /  | |__) | | |     
#       \ \/ /   |  ___/  | |     
#        \  /    | |      | |____ 
#         \/     |_|       \_____|

resource "aws_vpc" "this" {

  cidr_block                       = var.vpc_cidr
  instance_tenancy                 = "default"
  assign_generated_ipv6_cidr_block = true
  enable_dns_hostnames             = true
  enable_dns_support               = true
  enable_classiclink               = false

  tags = local.merged_vpc_tags

}