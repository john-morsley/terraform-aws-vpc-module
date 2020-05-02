﻿#      _____             _       
#     |  __ \           | |      
#     | |__) |___  _   _| |_ ___ 
#     |  _  // _ \| | | | __/ _ \
#     | | \ \ (_) | |_| | ||  __/
#     |_|  \_\___/ \__,_|\__\___|
#           _______    _     _      
#          |__   __|  | |   | |     
#             | | __ _| |__ | | ___ 
#             | |/ _` | '_ \| |/ _ \
#             | | (_| | |_) | |  __/
#             |_|\__,_|_.__/|_|\___|

resource "aws_route_table" "this" {

  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }

  tags = {
    Name = "${var.name}-rt"
  }

}