module "kubernetes_cluster" {
  source      = "./modules/kubernetes_cluster"
  name        = "shango"
  region      = "lon1"
  node_size   = "s-2vcpu-2gb"
  node_count  = 2
  k8s_version = "1.31.1-do.4"
}

/* resource "local_file" "kubeconfig" {
  content  = module.kubernetes_cluster.kubeconfig
  filename = "kubeconfig.yaml"
} */

/* module "spaces_bucket" {
  source = "./modules/spaces_bucket"
  name   = "junkyard"
  region = "lon1"
} */

module "helm_argocd" {
  source           = "./modules/helm_argocd"
  name             = "argocd"
  namespace        = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  argocd_version   = ">= 7.6.12"
  create_namespace = true
}

/* module "helm_prometheus" {
  source          = "./modules/helm_prometheus"
  name            = "prometheus"
  namespace       = "monitoring"
  repository      = "https://prometheus-community.github.io/helm-charts"
  chart           = "kube-prometheus-stack"
  version         = "65.7.0"
  create_namespace = true
  values          = ["${file("values/prometheusValues.yaml")}"]
} */

/* module "helm_loki" {
  source          = "./modules/helm_loki"
  name            = "loki"
  namespace       = "monitoring"
  repository      = "https://grafana.github.io/helm-charts"
  chart           = "loki-distributed"
  version         = "0.79.4"
  create_namespace = false
  values          = ["${file("values/lokiValues.yaml")}"]
} */

/* module "helm_promtail" {
  source          = "./modules/helm_promtail"
  name            = "promtail"
  namespace       = "monitoring"
  repository      = "https://grafana.github.io/helm-charts"
  chart           = "promtail"
  version         = "6.16.6"
  create_namespace = false
  values          = ["${file("values/promtailValues.yaml")}"]
} */
