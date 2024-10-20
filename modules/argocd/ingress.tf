resource "kubernetes_ingress_v1" "argocd" {
  depends_on = [helm_release.argocd]

  metadata {
    name      = "argocd-ingress"
    namespace = var.namespace_name

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
