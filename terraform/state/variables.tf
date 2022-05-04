variable "aws_region" {}
variable "bucket_name" {}
variable "dynamo_name" {}
variable "tags" {
  type        = map(string)
  default     = {}
}

