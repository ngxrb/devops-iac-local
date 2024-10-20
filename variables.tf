variable "kubernetes_config_path" {
  description = "The Kubernetes config path."
  type        = string
  default     = "~/.kube/config"

  validation {
    condition     = can(regex(module.shared.path_regex, var.kubernetes_config_path))
    error_message = "Invalid Kubernetes config path. Must be a valid path."
  }
}

variable "kubernetes_config_context" {
  description = "The Kubernetes config context."
  type        = string
  default     = "rancher-desktop"

  validation {
    condition     = can(regex(module.shared.k8s_name_regex, var.kubernetes_config_context))
    error_message = "Invalid Kubernetes config context. Must follow Kubernetes naming conventions."
  }
}
