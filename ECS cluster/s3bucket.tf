resource "aws_s3_bucket" "bucket" {
  bucket = "terraform-task0"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}