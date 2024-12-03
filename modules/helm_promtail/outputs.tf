output "release_name" {
  description = "Name of the Promtail Helm release"
  value       = helm_release.promtail.name
}
