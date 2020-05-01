####################### #
# Virtual Private Cloud #
# #######################
#
resource "aws_vpc" "this" {
  
  cidr_block = var.cidr_block

  tags = {
    "Name" = "${var.name}-vpc"
  }
          
}

################## #
# Internet Gateway #
# ##################
#
resource "aws_internet_gateway" "this" {
  
  vpc_id = aws_vpc.this.id

  tags = {
    "Name" = "${var.name}-ig"
  }
  
}

############# #
# Route Table #
# #############
#
resource "aws_route_table" "k8s-rt" {

  vpc_id = aws_vpc.this.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.this.id
  }

  tags = {
    Name = "${var.name}-rt"
  }

}

############### #
# Public Subnet #
# ###############
#
resource "aws_subnet" "public" {

  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.cidr_block
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-public-subnet"
  }

}

######################### #
# Route Table Association #
# #########################
#
resource "aws_route_table_association" "k8s-rta" {

  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.k8s-rt.id

}

############################## #
# Network Access Control Lists #
# ##############################
#
resource "aws_network_acl" "allow-all" {

  vpc_id = aws_vpc.this.id

  subnet_ids = [aws_subnet.public.id]
  
  # Outbound...
  egress {
    protocol   = "-1"
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  # Inbound...
  ingress {
    protocol   = "-1"
    rule_no    = 200
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    Name = "Allow All"
  }

}
