module "s3" {
  source = "../../modules/layers/s3"
  count = var.s3_enabled ? 1 : 0
  s3_bucket_values = var.s3_bucket_values
}