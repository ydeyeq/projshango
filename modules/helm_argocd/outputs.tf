output "release_name" {
  description = "Name of the ArgoCD Helm release"
  value       = helm_release.argocd.name
}
