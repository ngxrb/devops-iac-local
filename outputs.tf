output "deployment_name" {
  description = "The deployment name."
  value       = module.deploy_devops_environment.deployment_name
}

output "kubernetes_config_path" {
  description = "The Kubernetes config path."
  value       = var.kubernetes_config_path
}

output "kubernetes_config_context" {
  description = "The Kubernetes config context."
  value       = var.kubernetes_config_context
}
