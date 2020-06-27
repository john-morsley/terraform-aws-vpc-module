#       ____        _               _       
#      / __ \      | |             | |      
#     | |  | |_   _| |_ _ __  _   _| |_ ___ 
#     | |  | | | | | __| '_ \| | | | __/ __|
#     | |__| | |_| | |_| |_) | |_| | |_\__ \
#      \____/ \__,_|\__| .__/ \__,_|\__|___/
#                      | |                  
#                      |_|                  

output "id" {
  value = aws_vpc.this.id
}

//output "public_subnet_id" {
//  value = aws_subnet.public.*.id[0]
//}

output "public_subnet_ids" {
  value = aws_subnet.public.*.id
}

//output "private_subnet_id" {
//  value = aws_subnet.private.*.id[0]
//}

output "private_subnet_ids" {
  value = aws_subnet.private.*.id
}

