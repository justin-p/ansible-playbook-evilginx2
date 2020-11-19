resource "digitalocean_ssh_key" "main" {
  name       = "${var.name}-${var.root_username}"
  public_key = file("${var.root_ssh_key_path}.pub")
}

resource "digitalocean_tag" "main" {
  name = var.do_tag
}

resource "digitalocean_project" "main" {
  name        = var.name
  description = var.do_description
  purpose     = "Other"
  resources   = [digitalocean_droplet.main.urn]
}

resource "digitalocean_droplet" "main" {
  image              = var.image
  tags               = [digitalocean_tag.main.id]
  name               = "server-${local.name}"
  region             = var.location
  size               = var.server_type
  ipv6               = var.do_ipv6
  monitoring         = var.do_monitoring
  private_networking = var.do_private_networking
  ssh_keys           = [digitalocean_ssh_key.main.fingerprint]

  # Ensure SSH is ready and accepting connections.
  provisioner "remote-exec" {
    inline = ["echo 'Hello world!'"]

    connection {
      type        = "ssh"
      user        = "root"
      host        = digitalocean_droplet.main.ipv4_address
      private_key = file("${var.root_ssh_key_path}")
    }
  }
}
