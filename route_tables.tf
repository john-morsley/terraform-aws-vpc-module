#      _____             _       
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

resource "aws_route_table" "public" {

  count = length(var.public_subnet_cidrs) == 0 ? 0 : 1
  
  vpc_id = aws_vpc.this.id

  route {
    cidr_block = local.internet_cidr
    gateway_id = aws_internet_gateway.this.id
  }

  tags = {
    Name = "${var.name}-public-rt"
  }

}

resource "aws_route_table" "private" {

  count = length(var.private_subnet_cidrs) == 0 ? 0 : 1
  
  vpc_id = aws_vpc.this.id
  
  route {
    cidr_block = local.internet_cidr
    // ToDo --> Support multiple 
    nat_gateway_id = aws_nat_gateway.this.*.id[0]
  }
  
  tags = {
    Name = "${var.name}-private-rt"
  }

}