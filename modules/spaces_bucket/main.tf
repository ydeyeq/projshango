resource "digitalocean_spaces_bucket" "bucket" {
  name   = var.name
  region = var.region
}
