variable "bucket_name" {
  type = string
  description = "The name of the s3 bucket"
}

variable "bucket_force_destroy" {
  type = bool
  default = false
}
