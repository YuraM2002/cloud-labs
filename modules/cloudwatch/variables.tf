variable "alarm_name" {
  description = "Назва CloudWatch Alarm"
  type        = string
}

variable "sns_topic_arn" {
  description = "ARN SNS топіку"
  type        = string
}