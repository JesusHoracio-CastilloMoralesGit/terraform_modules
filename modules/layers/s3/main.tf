module "s3_bucket" {
  source = "../../aws/s3/aws_s3_buckets"
  for_each  = var.s3_bucket_values
  bucket_name = each.value.bucket_name
  bucket_force_destroy = each.value.bucket_force_destroy
}

module "s3_bucket_ownership" {
  source = "../../aws/s3/aws_s3_bucket_ownership"
  for_each = var.s3_bucket_values
  bucket_name = module.s3_bucket[each.key].bucket_name
  object_ownership = each.value.object_ownership
}

module "s3_bucket_acl" {
  source = "../../aws/s3/aws_s3_bucket_acl"
  for_each = var.s3_bucket_values
  bucket_name = module.s3_bucket[each.key].bucket_name
  bucket_acl = each.value.bucket_acl
}