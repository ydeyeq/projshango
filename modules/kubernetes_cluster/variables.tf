variable "name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "region" {
  description = "Region to create the cluster in"
  type        = string
}

variable "k8s_version" {
  description = "Kubernetes version to deploy"
  type        = string
}

variable "node_size" {
  description = "Size of the Kubernetes cluster nodes"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the cluster"
  type        = number
}
