terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "dop_v1_6789e84fda9c0a3558ece26be329877453acb60959a8c6496b43932987281520"
}

# Create a new Web Droplet in the nyc3 region
resource "digitalocean_droplet" "jenkins" {
  image    = "ubuntu-22-04-x64"
  name     = "jenkins"
  region   = "nyc3"
  size     = "s-2vcpu-2gb"
}
