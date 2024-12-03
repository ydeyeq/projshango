resource "helm_release" "promtail" {
  name             = var.name
  namespace        = var.namespace
  repository       = var.repository
  chart            = var.chart
  version          = var.version
  create_namespace = var.create_namespace

  values = var.values
}
