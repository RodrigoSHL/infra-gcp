variable "project_id" {
  type = string
}

variable "region" {
  type = string
}

variable "vpn_gateway_name" {
  type = string
}

variable "peer_ip" {
  type = string
}

variable "shared_secret" {
  type = string
  sensitive = true
}

variable "network_name" {
  type = string
}
