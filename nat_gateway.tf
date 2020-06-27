#      _   _              _______ 
#     | \ | |     /\     |__   __|
#     |  \| |    /  \       | |   
#     | . ` |   / /\ \      | |   
#     | |\  |  / ____ \     | |   
#     |_| \_| /_/    \_\    |_|   
#            _____       _                           
#           / ____|     | |                          
#          | |  __  __ _| |_ _____      ____ _ _   _ 
#          | | |_ |/ _` | __/ _ \ \ /\ / / _` | | | |
#          | |__| | (_| | ||  __/\ V  V / (_| | |_| |
#           \_____|\__,_|\__\___| \_/\_/ \__,_|\__, |
#                                               __/ |
#                                              |___/

resource "aws_nat_gateway" "this" {

  depends_on = [aws_internet_gateway.this]

  count = length(var.private_subnet_cidrs) == 0 ? 0 : 1

  allocation_id = aws_eip.nat-gateway.id
  subnet_id     = aws_subnet.public.*.id[count.index]

}