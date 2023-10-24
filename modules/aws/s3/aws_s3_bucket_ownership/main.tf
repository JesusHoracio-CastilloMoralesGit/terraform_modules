resource "aws_s3_bucket_ownership_controls" "bucket_acl" {
  bucket = var.bucket_name

  rule {
    object_ownership = var.object_ownership
  }
}