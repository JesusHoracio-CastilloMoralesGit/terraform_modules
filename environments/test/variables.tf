variable "region" {
  type = string
  description = "Region where the resources are hosted"
}

variable "environment" {
  type = string
  description = "The name of the environment"
}

variable "vpc_id" {
  type = string
}

variable "public_subnets_ids" {
  type = list(string)
}

variable "ingress_cidr_blocks" {
  type = list(string)
}
variable "egress_cidr_blocks" {
  type = list(string)
}

variable "s3_enabled" {
  type = bool
  description = "Enables the creation of the buckets"
}

variable "s3_bucket_values" {
  description = "Array of values for the s3 buckets"
}
