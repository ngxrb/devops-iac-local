module "shared" {
  source  = "git::https://github.com/ngxrb/iac-commons.git//modules/shared"
}

module "devops_environment" {
  source  = "git::https://github.com/ngxrb/iac-commons.git//modules/environment"
  deployment_name  = var.deployment_name
  environment_name = var.devops_environment_name
}
