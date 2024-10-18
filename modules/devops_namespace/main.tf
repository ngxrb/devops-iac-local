module "shared" {
  source  = "git::https://github.com/ngxrb/iac-commons.git//modules/shared?ref=v0.0.1"
}

module "devops_environment" {
  source  = "git::https://github.com/ngxrb/iac-commons.git//modules/environment?ref=v0.0.1"
  deployment_name  = var.deployment_name
  environment_name = var.devops_environment_name
}
