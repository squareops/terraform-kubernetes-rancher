variable "rancher_config" {
  type = any
  default = {
    email       = ""
    hostname    = ""
    values_yaml = ""
  }
  description = "Specify the configuration settings for Rancher including the hostname,email, and custom YAML values."
}

variable "namespace" {
  type        = string
  default     = "cattle-system"
  description = "Name of the Kubernetes namespace where the Rancher deployment will be deployed."
}

variable "chart_version" {
  type        = string
  default     = "2.7.5-rc5"
  description = "Version of the Rancher chart that will be used to deploy Rancher application."
}
