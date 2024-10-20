variable "devops_deployment_name" {
  description = "The DevOps deployment name (eg. local, saas)."
  type        = string
  default     = "local"

  validation {
    condition     = can(regex(module.shared.k8s_name_regex, var.devops_deployment_name))
    error_message = "Invalid DevOps deployment name. Must follow Kubernetes naming conventions."
  }
}

variable "devops_environment_name" {
  description = "The DevOps environment name (eg. devops)."
  type        = string
  default     = "devops"

  validation {
    condition     = can(regex(module.shared.k8s_name_regex, var.devops_environment_name))
    error_message = "Invalid DevOps environment name. Must follow Kubernetes naming conventions."
  }
}
