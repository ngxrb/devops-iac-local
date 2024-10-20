variable "argocd_namespace_name" {
  description = "The ArgoCD namespace name."
  type        = string

  validation {
    condition     = can(regex(module.shared.k8s_name_regex, var.argocd_namespace_name))
    error_message = "Invalid ArgoCD namespace name. Must follow Kubernetes naming conventions."
  }
}

variable "argocd_ingress_class_name" {
  description = "The ArgoCD ingress class name."
  type        = string

  validation {
    condition     = can(regex(module.shared.k8s_name_regex, var.argocd_ingress_class_name))
    error_message = "Invalid ArgoCD ingress class name. Must follow Kubernetes naming conventions."
  }
}

variable "argocd_host_name" {
  description = "The ArgoCD host name."
  type        = string

  validation {
    condition     = can(regex(module.shared.host_regex, var.argocd_host_name))
    error_message = "Invalid ArgoCD host name. Must follow Kubernetes naming conventions."
  }
}

