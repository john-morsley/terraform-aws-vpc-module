﻿#                        _ _       _     _ _ _ _         
#         /\            (_) |     | |   (_) (_) |        
#        /  \__   ____ _ _| | __ _| |__  _| |_| |_ _   _ 
#       / /\ \ \ / / _` | | |/ _` | '_ \| | | | __| | | |
#      / ____ \ V / (_| | | | (_| | |_) | | | | |_| |_| |
#     /_/    \_\_/ \__,_|_|_|\__,_|_.__/|_|_|_|\__|\__, |
#           ______                                  __/ |
#          |___  /                                 |___/ 
#             / / ___  _ __   ___  ___ 
#            / / / _ \| '_ \ / _ \/ __|
#           / /_| (_) | | | |  __/\__ \
#          /_____\___/|_| |_|\___||___/

data "aws_availability_zones" "available" {
  state = "available"
}