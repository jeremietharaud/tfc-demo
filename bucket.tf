resource "aws_s3_bucket" "mybucket" {
  bucket = "tfc-demo-${var.region}-664685189390"
  acl    = "private"
}