variable "name" {
  default     = "gophish"
}

resource "random_string" "name" { 
  length = 6
  special = false
  upper = false
}

locals {                        
  name = "${var.name}-${terraform.workspace}-${random_string.name.result}"
}

variable "root_username" {
  description = "The username of the root account"
  default     = "root"
}

variable "root_ssh_key_path" {
  description = "The path of the ssh key for the root account"
  default     = "~/.ssh/root-gophish"
}

variable "do_token" {
  description = "Your Digital Ocean Api token generated from here https://cloud.digitalocean.com/account/api/tokens"
  default     = "123465789"
}

variable "image" {
  description = "The image to use when creating the VPS"
  default     = "ubuntu-20-04-x64"
}
variable "location" {
  description = "Region to create VPS in"
  default     = "ams3"
}

variable "server_type" {
  description = "VPS Size"
  default     = "s-1vcpu-1gb"
}

variable "do_tag" {
  description = "Tag added to the DigitalOcean Droplet"
  default     = "ansible_terra_server"
}

variable "do_description" {
  description = "Description of the new to the DigitalOcean Droplet"
  default     = "Server deployed with Terraform and Ansible"
}

variable "do_ipv6" {
  description = "Enable or Disable ipv6"
  default     = true
}

variable "do_monitoring" {
  description = "Enable or disable DigitalOcean Monitoring"
  default     = false
}

variable "do_private_networking" {
  description = "Enable or disable private networking"
  default     = true
}