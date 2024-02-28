# AWS Details
variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "eu-west-3"
}

variable "aws_profile" {
  type        = string
  description = "AWS profile name"
  default     = "ema2024"
}

variable "aws_shared_credentials_files_path" {
  type        = list(string)
  description = "AWS credentials and other settings"
  default = ["~/.aws/profile"]
}

variable "aws_ssh_public_key_file_path" {
  type        = string
  description = "Provide your SSH public key file path"
  default = "~/.ssh/aws.pub"
}

variable "aws_ami" {
  type        = string
  description = "AWS AMI"
}

variable "aws_vpc_id" {
  type        = string
  description = "AWS VPC ID"
}

variable "aws_subnet_id" {
  type        = string
  description = "AWS Subnet ID"
}

variable "aws_instance_type" {
  type        = string
  description = "AWS Instance Type"
  default     = "t3.micro"
}


variable "aws_instance_tag" {
  type        = string
  description = "AWS Instance Tag"
  default     = "Terraform"
}
