output "deployment_name" {
  description = "The deployment name."
  value       = var.devops_deployment_name
}

output "devops_namespace_name" {
  description = "The DevOps namespace name."
  value       = module.deploy_devops_environment.namespace
}

output "devops_service_account_name" {
  description = "The DevOps ServiceAccount name."
  value       = module.deploy_devops_environment.service_account
}

output "devops_environment_role_name" {
  description = "The DevOps environment role name."
  value       = module.deploy_devops_environment.role
}
