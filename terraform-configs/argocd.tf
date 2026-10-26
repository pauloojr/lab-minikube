resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = "10.10.5"
  namespace        = "argocd"
  create_namespace = "true"

  values = [
    <<EOF
    server:
      service:
        type: ClusterIP
    EOF
  ]
}