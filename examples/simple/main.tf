#      ______                           _      
#     |  ____|                         | |     
#     | |__  __  ____ _ _ __ ___  _ __ | | ___ 
#     |  __| \ \/ / _` | '_ ` _ \| '_ \| |/ _ \
#     | |____ >  < (_| | | | | | | |_) | |  __/
#     |______/_/\_\__,_|_| |_| |_| .__/|_|\___|
#                                | |           
#                                |_|           
#

module "vpc" {

  source = "./../../../terraform-aws-vpc"
  #source = "john-morsley/terraform-aws-vpc"

  name = "simple-example"

  cidr_block = "10.0.0.0/16" # 65,531 (65,536 possible - 5 reserved by AWS)

  public_subnets = ["10.0.0.0/24"] # 251 (256 possible - 5 reserved by AWS)

  tags = {
    Owner = "john-doe"
  }

}