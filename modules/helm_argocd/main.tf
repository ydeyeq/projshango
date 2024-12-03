resource "helm_release" "argocd" {
  name             = var.name
  namespace        = var.namespace
  repository       = var.repository
  chart            = var.chart
  version          = var.argocd_version
  create_namespace = var.create_namespace
}
