resource "kubernetes_ingress_v1" "argocd_ingress" {
  depends_on = [helm_release.deploy_argocd]

  metadata {
    name      = "argocd-ingress"
    namespace = var.argocd_namespace_name

    annotations = {
      "kubernetes.io/ingress.class"                      = var.argocd_ingress_class_name
      "traefik.ingress.kubernetes.io/router.entrypoints" = "web"
    }
  }

  spec {
    ingress_class_name = var.argocd_ingress_class_name

    rule {
      host = var.argocd_host_name

      http {
        path {
          path      = "/argocd"
          path_type = "Prefix"

          backend {
            service {
              name = "argocd-server"

              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }
}
