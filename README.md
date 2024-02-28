# Terraform AWS Module

This Terraform module provisions an AWS EC2 instance based on the specified configurations.

## Usage

### Module Declaration

To use this module in your Terraform configuration, add the following code:

```hcl
# Load module
module "terraform-aws-module" {
  source = "git@github.com:Jeremy-Sch/terraform-aws-module.git"

  # Define variables
  aws_region = "eu-west-3"
  aws_profile = "default"
  aws_shared_credentials_files_path = ["~/.aws/profile"]
  aws_ssh_public_key_file_path = "~/.ssh/aws.pub"
  aws_ami = "ami-X"
  aws_vpc_id = "vpc-X"
  aws_subnet_id = "subnet-X"
  aws_instance_type = "t3.micro"
  aws_instance_tag = "Terraform"
}
```

### Input Variables
- `aws_region`: The AWS region where resources will be created.
- `aws_profile`: The AWS CLI profile to use for authentication.
- `aws_shared_credentials_files_path`: List of paths to shared AWS credentials file(s).
- `aws_ssh_public_key_file_path`: Path to the SSH public key file for EC2 instances.
- `aws_ami`: The ID of the Amazon Machine Image (AMI) to use for the EC2 instance.
- `aws_vpc_id`: The ID of the VPC where the EC2 instance will be launched.
- `aws_subnet_id`: The ID of the subnet where the EC2 instance will be placed.
- `aws_instance_type`: The type of EC2 instance to launch (e.g., "t3.micro").
- `aws_instance_tag`: The tag to be applied to the EC2 instance.

### Run

1. Terraform Init:
```bash
terraform init
```
2. Terraform Apply:
```bash
terraform apply
```
