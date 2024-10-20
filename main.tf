module "deploy_devops_environment" {
  source = "./modules/devops_environment"
}

module "deploy_argocd" {
  source                = "./modules/argocd"
  argocd_namespace_name = "local-argocd"
}
