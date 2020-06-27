#     __      __           _                 
#     \ \    / /          (_)                
#      \ \  / /__ _ __ ___ _  ___  _ __  ___ 
#       \ \/ / _ \ '__/ __| |/ _ \| '_ \/ __|
#        \  /  __/ |  \__ \ | (_) | | | \__ \
#         \/ \___|_|  |___/_|\___/|_| |_|___/

terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  required_version = ">= 0.13"

}