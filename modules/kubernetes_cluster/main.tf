resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = var.name
  region  = var.region
  version = var.k8s_version

  node_pool {
    name       = "worker-nodes"
    size       = var.node_size
    node_count = var.node_count
  }
}
