#      _                     _     
#     | |                   | |    
#     | |     ___   ___ __ _| |___ 
#     | |    / _ \ / __/ _` | / __|
#     | |___| (_) | (_| (_| | \__ \
#     |______\___/ \___\__,_|_|___/

locals {
  
  merged_vpc_tags = merge(
    { Name = "${var.name}-vpc" },
    var.tags,
    var.vpc_tags,
  )

  merged_public_subnet_tags = merge(
    var.tags,
    var.public_subnet_tags,
  )

  merged_private_subnet_tags = merge(
    var.tags,
    var.private_subnet_tags
  )

  internet_cidr = "10.0.0.0/0"
  
}