module "shared" {
  source  = "git::https://github.com/ngxrb/iac-commons.git//modules/shared?ref=v0.0.1"
}

module "devops_namespace" {
  source          = "./modules/devops_namespace"
  deployment_name = var.deployment_name
}