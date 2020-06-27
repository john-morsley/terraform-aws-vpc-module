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
#                                            _       _   _             
#                   /\                      (_)     | | (_)            
#                  /  \   ___ ___  ___   ___ _  __ _| |_ _  ___  _ __  
#                 / /\ \ / __/ __|/ _ \ / __| |/ _` | __| |/ _ \| '_ \ 
#                / ____ \\__ \__ \ (_) | (__| | (_| | |_| | (_) | | | |
#               /_/    \_\___/___/\___/ \___|_|\__,_|\__|_|\___/|_| |_|

resource "aws_route_table_association" "public" {

  count = length(var.public_subnet_cidrs) == 0 ? 0 : length(var.public_subnet_cidrs)

  subnet_id      = aws_subnet.public.*.id[count.index]
  route_table_id = aws_route_table.public[0].id

}

resource "aws_route_table_association" "private" {

  count = length(var.private_subnet_cidrs) == 0 ? 0 : length(var.private_subnet_cidrs)

  subnet_id      = aws_subnet.private.*.id[count.index]
  route_table_id = aws_route_table.private[0].id

}