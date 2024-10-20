output "deployment_name" {
  description = "The deployment name."
  value       = local.deployment_name
}

output "devops_namespace_name" {
  description = "The DevOps namespace name."
  value       = local.devops_namespace_name
}

output "devops_host_name" {
  description = "The DevOps host name."
  value       = local.devops_host_name
}

output "kubernetes_config_path" {
  description = "The Kubernetes config path."
  value       = local.kubernetes_config_path
}

output "kubernetes_config_context" {
  description = "The Kubernetes config context."
  value       = local.kubernetes_config_context
}

output "kubernetes_ingress_class_name" {
  description = "The Kubernetes ingress class name."
  value       = local.kubernetes_ingress_class_name
}

output "argocd_url" {
  description = "The ArgoCD url."
  value       = module.deploy_argocd.argocd_url
}

output "argocd_admin_password" {
  description = "The ArgoCD admin password."
  value       = module.deploy_argocd.argocd_admin_password
}
