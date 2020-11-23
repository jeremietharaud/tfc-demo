resource "aws_s3_bucket" "mybucket" {
  bucket = "tfc-demo-eu-west-1-664685189390"
  acl    = "private"
}