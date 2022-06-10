variable "service_plan_name" {
  type        = string
  description = "Name for the service plan"
  default     = "free-tier-service-plan"
}

variable "service_plan_sku_name" {
  type        = string
  description = "SKU name for the service plan"
  default     = "F1"
}

variable "service_plan_os_type" {
  type        = string
  description = "OS type for the service plan"
  default     = "Linux"
}

variable "app_service_name" {
  type        = string
  description = "Name for the app service"
  default     = "vending-machine"
}
