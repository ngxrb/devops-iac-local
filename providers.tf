provider "kubernetes" {
  config_path    = local.kubernetes_config_path
  config_context = local.kubernetes_config_context
}

provider "helm" {
  kubernetes {
    config_path = local.kubernetes_config_path
  }
}
