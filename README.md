# AWS Terraform Modules

A collection of reusable Terraform modules for AWS infrastructure provisioning.

## Available Modules

- [VPC Module](/modules/vpc) - Creates a configurable Virtual Private Cloud (VPC) with standardized tagging

## Usage

To use these modules in your Terraform configuration:

```hcl
module "vpc" {
  source = "github.com/ran130987wan/aws_terraform_module//modules/vpc"
  
  vpc_cidr_block      = "10.0.0.0/16"
  project_name        = "my-project"
  environment         = "dev"
  vpc_instance_tenancy = "default"
  additional_tags     = {
    Department = "Engineering"
  }
}
```

## Requirements
1. Terraform 1.0+
2. AWS Provider ~> 5.0

## Development
1. Clone this repository
2. Create feature branches for new modules
3. Submit pull requests for review

## License
- [MIT License](https://license/)

