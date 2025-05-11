provider "aws" {
  region = "eu-central-1"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "my_bucket" {
  bucket        = "my-terraform-demo-bucket-${random_id.suffix.hex}"
  force_destroy = true
}
