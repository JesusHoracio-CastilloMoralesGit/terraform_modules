# General variables and default tags
environment = "test"
region = "us-east-1"

# Networking variables
vpc_id = "vpc-01be65d0f75dc8114"
public_subnets_ids = ["subnet-0cc795f5d6c115d48", "subnet-029f49927cd635415", "subnet-0c2e22b817e5c3b82", "subnet-041571438d17be22c"]
ingress_cidr_blocks = ["172.31.16.0/20", "172.31.80.0/20", "172.31.64.0/20", "172.31.0.0/20"]
egress_cidr_blocks = [ "172.31.16.0/20", "172.31.80.0/20", "172.31.64.0/20", "172.31.0.0/20" ]


# s3
s3_enabled = true
s3_bucket_values = {
  rotoche_bucket = {
    bucket_name = "rotoche"
    bucket_acl  = "private"
    object_ownership = "BucketOwnerPreferred"
    bucket_force_destroy = true
   }
   lokochon = {
    bucket_name = "lokochon"
    bucket_acl  = "private"
    object_ownership = "BucketOwnerPreferred"
    bucket_force_destroy = true
   }
}