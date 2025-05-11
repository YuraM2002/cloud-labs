variable "bucket_name" {
  description = "Назва S3 бакету"
  type        = string
}

variable "tags" {
  description = "Теги"
  type        = map(string)
  default     = {}
}