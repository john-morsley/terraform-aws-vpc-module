#      _____                   _       
#     |_   _|                 | |      
#       | |  _ __  _ __  _   _| |_ ___ 
#       | | | '_ \| '_ \| | | | __/ __|
#      _| |_| | | | |_) | |_| | |_\__ \
#     |_____|_| |_| .__/ \__,_|\__|___/
#                 | |                  
#                 |_|

variable "name" {
  description = "Name for the VPC"
  type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
}

variable "tags" {
  description = "Additional tags for all resources"
  type        = map(string)
  default     = {}
}

variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}

variable "internet_gateway_tags" {
  description = "Additional tags for the Internet Gateway"
  type        = map(string)
  default     = {}
}

variable "public_subnet_tags" {
  description = "Additional tags for the public Subnet"
  type        = map(string)
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for the private Subnet"
  type        = map(string)
  default     = {}
}