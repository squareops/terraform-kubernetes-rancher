variable "rancher_config" {
  type = any
  default = {
    email       = ""
    hostname    = ""
    values_yaml = ""
  }
  description = "Rancher configurations"
}

variable "namespace" {
  type        = string
  default     = "cattle-system"
  description = "Namespace name"
}

variable "chart_version" {
  type        = string
  default     = "2.7.2"
  description = "Chart version"
}
