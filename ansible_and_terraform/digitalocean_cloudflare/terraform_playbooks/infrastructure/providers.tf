terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    random = {
      source = "hashicorp/random"
    }    
  }
  required_version = ">= 0.13"
}

provider "digitalocean" {
  version = "~> 1.23.0"
  token   = var.do_token
}
