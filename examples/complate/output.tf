output "username" {
  description = "Username"
  value       = module.rancher.user_name
}

output "admin_password" {
  description = "Initial admin password. Prompts for change on initial login."
  value       = module.rancher.initial_admin_password
}
