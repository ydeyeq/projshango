terraform {
  cloud {

    organization = "ydeyeq"

    workspaces {
      name = "DOKS-cluster-01"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.44.1"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
  // spaces_access_id  = var.access_id
  // spaces_secret_key = var.secret_key
}

provider "helm" {
  kubernetes {
    config_paths = ["/Users/ydeyeq/.kube/config"]
  }
}