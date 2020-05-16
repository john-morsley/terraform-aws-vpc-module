#      _____      _            _       
#     |  __ \    (_)          | |      
#     | |__) | __ ___   ____ _| |_ ___ 
#     |  ___/ '__| \ \ / / _` | __/ _ \
#     | |   | |  | |\ V / (_| | ||  __/
#     |_|   |_|  |_| \_/ \__,_|\__\___|
#            _____       _                _   
#           / ____|     | |              | |  
#          | (___  _   _| |__  _ __   ___| |_ 
#           \___ \| | | | '_ \| '_ \ / _ \ __|
#           ____) | |_| | |_) | | | |  __/ |_ 
#          |_____/ \__,_|_.__/|_| |_|\___|\__|

resource "aws_subnet" "private" {

  //count = length(var.private_subnet_cidrs) == 0 ? 0 : length(var.private_subnet_cidrs)

  vpc_id                  = aws_vpc.this.id
  //cidr_block              = var.private_subnet_cidrs[count.index]
  cidr_block              = var.private_subnet_cidrs[0]
  map_public_ip_on_launch = false
  availability_zone = var.availability_zone
  
  tags = local.merged_private_subnet_tags  
  
}