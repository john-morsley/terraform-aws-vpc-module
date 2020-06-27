#     __      __  _____     _____ 
#     \ \    / / |  __ \   / ____|
#      \ \  / /  | |__) | | |     
#       \ \/ /   |  ___/  | |     
#        \  /    | |      | |____ 
#         \/     |_|       \_____|

module "rke-vpc" {

  source = "./../../../terraform-aws-vpc"
  #source = "john-morsley/vpc/aws"

  name = "rke-example"

  vpc_cidr = "10.0.0.0/16" # 65,531 (65,536 possible - 5 reserved by AWS)

  public_subnet_cidrs  = ["10.0.1.0/24"] # 251 (256 possible - 5 reserved by AWS)
  private_subnet_cidrs = ["10.0.2.0/24"] # 251 (256 possible - 5 reserved by AWS)

  public_subnet_tags = local.cluster_id_tag

  availability_zones = data.aws_availability_zones.available.names

}