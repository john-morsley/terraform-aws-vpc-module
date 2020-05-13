#      _____    _  __  ______ 
#     |  __ \  | |/ / |  ____|
#     | |__) | | ' /  | |__   
#     |  _  /  |  <   |  __|  
#     | | \ \  | . \  | |____ 
#     |_|  \_\ |_|\_\ |______|

module "rke-vpc" {

  source = "./../../../terraform-aws-vpc"
  #source = "john-morsley/terraform-aws-vpc"

  name = "rke-example"

  vpc_cidr = "10.0.0.0/16" # 65,531 (65,536 possible - 5 reserved by AWS)

  public_subnets = ["10.0.1.0/24"] # 251 (256 possible - 5 reserved by AWS)
  pprivate_subnets = ["10.0.2.0/24"] # 251 (256 possible - 5 reserved by AWS)
  
  public_subnet_tags = local.cluster_id_tag
  
}