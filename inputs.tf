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
  description = "A map of tags to add to all resources in the VPC"
  type        = map(string)
  default     = {}
}