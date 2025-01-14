resource "helm_release" "deploy_argocd" {
  name             = "argocd"
  namespace        = var.argocd_namespace_name
  create_namespace = true

  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "7.6.12"

  values = [file("${path.module}/values.yaml")]
}


