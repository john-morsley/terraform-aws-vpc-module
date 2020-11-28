# Terraform a VPC in AWS

Terraform code for creating a VPC within AWS and the associated VPC related components:

1. VPC
2. Subnets (Public and Private)
3. Internet Gateway
4. Route Tables
5. NAT Gateway
6. Security Gateways
7. Network ACLs

## Prequisites:

1. An AWS account

## Examples

For examples how to use, please refer to the README.md in each of the example folders.
Each example is completely stand alone and should create AWS resources when executed.

## AWS Credentials

Set the following environment variables:
```bash
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_DEFAULT_REGION="us-west-2"
```

Refer to: https://www.terraform.io/docs/providers/aws/index.html

## Usage

```
module "vpc" {

  source = "john-morsley/aws-vpc"

  name = "example"

}
```

## Terraform Registry

When the code is ready, it needs deploying to the Terraform Registry.
Unfortunately, there is no API to allow automatic deployment.
Therefore, this must be done manually.

1. Log into GitHub
2. Tag the latest master branch
3. Login to Terraform Registry
4. Publish -- Module.
5. Select john-morsley/terraform-aws-vpc
6. Agree to the 'Terms of Use.'
7. 'Publish Module'