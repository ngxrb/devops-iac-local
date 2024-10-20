terraform {
  required_version = ">= 1.9.7"

  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
    }

    helm = {
      source = "hashicorp/helm"
    }
  }
}
