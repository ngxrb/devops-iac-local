resource "kubernetes_ingress_v1" "argocd_ingress" {
  depends_on = [helm_release.deploy_argocd]

  metadata {
    name      = "argocd-ingress"
    namespace = var.argocd_namespace_name

    annotations = {
      "kubernetes.io/ingress.class"                      = "traefik"
      "traefik.ingress.kubernetes.io/router.entrypoints" = "web"
    }
  }

  spec {
    ingress_class_name = "traefik"

    rule {
      host = "devops.localhost"

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
