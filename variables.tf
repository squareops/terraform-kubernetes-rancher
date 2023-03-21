variable "rancher_config" {
  type = any
  default = {
    hostname    = ""
    email       = ""
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
  default     = "2.7.0"
  description = "Chart version"

}
