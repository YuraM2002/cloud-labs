terraform {
  backend "s3" {
    bucket         = "499376236463-terraform-tfstate"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-tfstate-lock"
    encrypt        = true
  }
}