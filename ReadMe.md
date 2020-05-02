# Terraform a VPC in AWS

## Examples

For examples how to use, please refer to the examples folder.

## Usage

```
module "vpc" {

  source = "john-morsley/aws-vpc"

  name = "example"

  tags = {
    Terraform = "true"
  }

}
```