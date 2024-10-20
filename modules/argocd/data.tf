data "external" "argocd_password" {
  depends_on = [helm_release.deploy_argocd]

  program = ["bash", "${path.module}/get_argocd_password.sh", var.argocd_namespace_name]
}