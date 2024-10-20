terraform {
  required_version = ">= 1.9.7"
}

provider "kubernetes" {
  config_path    = var.kubernetes_config_path
  config_context = var.kubernetes_config_context
}

provider "helm" {
  kubernetes {
    config_path = var.kubernetes_config_path
  }
}