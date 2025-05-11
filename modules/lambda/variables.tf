variable "function_name" { description = "Назва Lambda-функції"; type = string }
variable "handler" { description = "Обробник Lambda"; type = string }
variable "runtime" { description = "Рантайм Lambda"; type = string }
variable "role_arn" { description = "ARN ролі"; type = string }
variable "filename" { description = "Шлях до zip-файлу"; type = string }
variable "memory_size" { description = "Пам’ять (MB)"; type = number; default = 128 }
variable "timeout" { description = "Таймаут (сек)"; type = number; default = 3 }
variable "environment_variables" { description = "Змінні оточення"; type = map(string); default = {} }
variable "tags" { description = "Теги"; type = map(string); default = {} }