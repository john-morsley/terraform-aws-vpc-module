#      _                     _     
#     | |                   | |    
#     | |     ___   ___ __ _| |___ 
#     | |    / _ \ / __/ _` | / __|
#     | |___| (_) | (_| (_| | \__ \
#     |______\___/ \___\__,_|_|___/

locals {

  merged_public_subnet_tags = merge(
    { Name = "${var.name}-public-subnet" },
    var.tags,
    var.public_subnet_tags,
  )

  merged_private_subnet_tags = merge(
    { Name = "${var.name}-private-subnet" },
    var.tags,
    var.private_subnet_tags
  )
  
}