variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-east-1"
}

variable "instance_name" {
  description = "Instance Name will be created"
  default     = "web"
}

variable "instance_count" {
  description = "Instance Name will be created"
  default     = 2
}

variable "vpc_name" {
  description = "Name of vpc"
  default     = "tf_vpc"
}

variable "vpc_cidr_block" {
    description = "Cidr block of vpc"
    default = "10.0.0.0/16"
}
