variable "table_name" { description = "Назва таблиці"; type = string }
variable "billing_mode" { description = "Режим оплати"; type = string; default = "PAY_PER_REQUEST" }
variable "hash_key" { description = "Основний ключ"; type = string }
variable "hash_key_type" { description = "Тип ключа"; type = string; default = "S" }
variable "range_attributes" { description = "Range атрибути"; type = map(object({ name = string, type = string })); default = {} }
variable "tags" { description = "Теги"; type = map(string); default = {} }