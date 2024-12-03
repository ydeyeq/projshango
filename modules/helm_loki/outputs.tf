output "release_name" {
  description = "Name of the Loki Helm release"
  value       = helm_release.loki.name
}
