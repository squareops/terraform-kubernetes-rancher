output "initial_admin_password" {
  description = "Initial admin password. Prompts for change on initial login."
  value       = nonsensitive(data.kubernetes_secret.rancher_password.data["bootstrapPassword"])
}

output "user_name" {
  description = "User name"
  value       = "admin"

}
