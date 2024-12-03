variable "name" {}
variable "namespace" {}
variable "repository" {}
variable "chart" {}
variable "argocd_version" {}
variable "create_namespace" {
  description = "Specifies whether the namespace should be created"
  type        = bool
  default     = false
}
