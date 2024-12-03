output "kubeconfig" {
  description = "Kubeconfig for the Kubernetes cluster"
  value       = digitalocean_kubernetes_cluster.cluster.kube_config[0].raw_config
}
