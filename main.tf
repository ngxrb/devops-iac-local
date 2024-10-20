module "shared" {
  source = "git::https://github.com/ngxrb/iac-commons.git//modules/shared"
}

module "devops_namespace" {
  source          = "./modules/devops_namespace"
  deployment_name = var.deployment_name
}

module "argocd" {
  source         = "./modules/argocd"
  namespace_name = "local-argocd"
}