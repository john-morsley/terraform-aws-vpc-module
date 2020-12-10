#      _______                   __                     
#     |__   __|                 / _|                    
#        | | ___ _ __ _ __ __ _| |_ ___  _ __ _ __ ___  
#        | |/ _ \ '__| '__/ _` |  _/ _ \| '__| '_ ` _ \ 
#        | |  __/ |  | | | (_| | || (_) | |  | | | | | |
#        |_|\___|_|  |_|  \__,_|_| \___/|_|  |_| |_| |_|

terraform {

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.14"

  # Terraform Cloud requires the following environment variables:

  # AWS_DEFAULT_REGION
  # AWS_ACCESS_KEY_ID
  # AWS_SECRET_ACCESS_KEY

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "john-morsley"
    workspaces {
      name = "learning-gitlab"
    }
  }

}