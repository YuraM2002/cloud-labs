output "api_id" {
  value = aws_api_gateway_rest_api.api.id
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}