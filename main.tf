module "deploy_argocd" {
  source = "./modules/argocd"

  argocd_namespace_name     = local.devops_namespace_name
  argocd_ingress_class_name = local.kubernetes_ingress_class_name
  argocd_host_name          = local.devops_host_name
}
