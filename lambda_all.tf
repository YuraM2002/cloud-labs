resource "aws_iam_role" "lambda_exec_role" {
  name = "lambda_exec_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action    = "sts:AssumeRole"
      Effect    = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

resource "aws_iam_policy" "lambda_dynamodb_policy" {
  name = "lambda_dynamodb_policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action   = [
        "dynamodb:Scan",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:UpdateItem",
        "dynamodb:DeleteItem"
      ]
      Effect   = "Allow"
      Resource = [
        aws_dynamodb_table.authors.arn,
        aws_dynamodb_table.courses.arn
      ]
    }]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_policy_attach" {
  role       = aws_iam_role.lambda_exec_role.name
  policy_arn = aws_iam_policy.lambda_dynamodb_policy.arn
}

resource "aws_lambda_function" "get_all_authors" {
  function_name = "get-all-authors"
  filename      = "${path.module}/lambda/get-all-authors.zip"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_exec_role.arn
  timeout       = 10
  memory_size   = 128
}

resource "aws_lambda_function" "get_all_courses" {
  function_name = "get-all-courses"
  filename      = "${path.module}/lambda/get-all-courses.zip"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_exec_role.arn
  timeout       = 10
  memory_size   = 128
}

resource "aws_lambda_function" "get_course" {
  function_name = "get-course"
  filename      = "${path.module}/lambda/get-course.zip"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_exec_role.arn
  timeout       = 10
  memory_size   = 128
}

resource "aws_lambda_function" "save_course" {
  function_name = "save-course"
  filename      = "${path.module}/lambda/save-course.zip"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_exec_role.arn
  timeout       = 10
  memory_size   = 128
}

resource "aws_lambda_function" "update_course" {
  function_name = "update-course"
  filename      = "${path.module}/lambda/update-course.zip"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_exec_role.arn
  timeout       = 10
  memory_size   = 128
}

resource "aws_lambda_function" "delete_course" {
  function_name = "delete-course"
  filename      = "${path.module}/lambda/delete-course.zip"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_exec_role.arn
  timeout       = 10
  memory_size   = 128
}
