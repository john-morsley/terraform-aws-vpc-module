﻿#      _____       _     _ _      
#     |  __ \     | |   | (_)     
#     | |__) |   _| |__ | |_  ___ 
#     |  ___/ | | | '_ \| | |/ __|
#     | |   | |_| | |_) | | | (__ 
#     |_|    \__,_|_.__/|_|_|\___|
#            _____       _                _   
#           / ____|     | |              | |  
#          | (___  _   _| |__  _ __   ___| |_ 
#           \___ \| | | | '_ \| '_ \ / _ \ __|
#           ____) | |_| | |_) | | | |  __/ |_ 
#          |_____/ \__,_|_.__/|_| |_|\___|\__|

resource "aws_subnet" "public" {

  //count = length(var.public_subnet_cidrs) == 0 ? 0 : length(var.public_subnet_cidrs) 
  
  vpc_id                  = aws_vpc.this.id
  //cidr_block              = var.public_subnet_cidrs[count.index]
  cidr_block              = var.public_subnet_cidrs[0]
  map_public_ip_on_launch = true

  tags = local.merged_public_subnet_tags  
  
}