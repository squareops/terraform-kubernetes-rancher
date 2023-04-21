output "rancher" {
  description = "Rancher_Info"
  value = {
    username = "admin",
    password = nonsensitive(data.kubernetes_secret.rancher_password.data["bootstrapPassword"]),
    url      = var.rancher_config.hostname
  }
}
