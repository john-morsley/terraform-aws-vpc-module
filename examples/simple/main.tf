module "vpc" {
  
  source = "../../"
  
  name = "simple-example"

  cidr_block = "10.0.0.0/16" # 65,531 (65,536 possible - 5 reserved by AWS)

  public_subnets  = ["10.0.0.0/24"] # 251 (256 possible - 5 reserved by AWS)
  
  tags = {
    Owner = "john-doe"
  }
  
}
