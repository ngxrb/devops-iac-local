module "deploy_devops_environment" {
  source           = "git::https://github.com/ngxrb/iac-commons.git//modules/environment"
  deployment_name  = var.devops_deployment_name
  environment_name = var.devops_environment_name
}
