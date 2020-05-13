#       _____ _                 _      
#      / ____(_)               | |     
#     | (___  _ _ __ ___  _ __ | | ___ 
#      \___ \| | '_ ` _ \| '_ \| |/ _ \
#      ____) | | | | | | | |_) | |  __/
#     |_____/|_|_| |_| |_| .__/|_|\___|
#                        | |           
#                        |_|           

module "simple-vpc" {

  source = "./../../../terraform-aws-vpc"
  #source = "john-morsley/terraform-aws-vpc"

  name = "simple-example"

  vpc_cidr = "10.0.0.0/16" # 65,531 (65,536 possible - 5 reserved by AWS)

  public_subnet_cidrs = ["10.0.1.0/24"] # 251 (256 possible - 5 reserved by AWS)
  private_subnet_cidrs = ["10.0.2.0/24"] # 251 (256 possible - 5 reserved by AWS)
  
}