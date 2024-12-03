output "release_name" {
  description = "Name of the Prometheus Helm release"
  value       = helm_release.prometheus.name
}
