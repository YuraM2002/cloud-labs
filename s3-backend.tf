
resource "aws_s3_bucket" "terraform_state" {
  bucket = "your-unique-bucket-name-here"
  acl    = "private"

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_object" "state_file" {
  bucket = aws_s3_bucket.terraform_state.bucket
  key    = "terraform.tfstate"
  source = "path/to/local/terraform.tfstate"
  acl    = "private"
}
