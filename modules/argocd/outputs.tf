output "argocd_url" {
  description = "The ArgoCD url."
  value       = "http://${var.argocd_host_name}/argocd"
}

output "argocd_admin_password" {
  value = data.external.argocd_password.result.argocd_password
}