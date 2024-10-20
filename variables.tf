locals {
  deployment_name = "local"

  devops_namespace_name = "local-devops"
  devops_host_name      = "devops.localhost"

  kubernetes_config_path        = "~/.kube/config"
  kubernetes_config_context     = "rancher-desktop"
  kubernetes_ingress_class_name = "traefik"
}
