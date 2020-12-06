resource "aws_s3_bucket" "mybucket" {
  bucket = "tfc-demo-${var.region}-664685189390"
  acl    = "private"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}