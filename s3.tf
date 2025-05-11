resource "aws_s3_bucket" "website" {
  bucket = "cloud-labs-site"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = local.common_tags
}