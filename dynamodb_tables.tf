resource "aws_dynamodb_table" "authors" {
  name           = var.authors_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = var.authors_table_name
  }
}

resource "aws_dynamodb_table" "courses" {
  name           = var.courses_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = var.courses_table_name
  }
}
