variable "argocd_namespace_name" {
  description = "The namespace where ArgoCD will be deployed"
  type        = string

  validation {
    condition     = can(regex(module.shared.k8s_name_regex, var.argocd_namespace_name))
    error_message = "Invalid ArgoCD namespace name. Must follow Kubernetes naming conventions."
  }
}