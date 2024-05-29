variable "project_id" {
  description = "ID del proyecto de Google Cloud"
}

variable "region" {
  description = "Región de Google Cloud"
}

variable "cluster_name" {
  description = "Nombre del clúster de Kubernetes (GKE)"
}

variable "network_name" {
  description = "Nombre de la red VPC existente"
}

variable "vpn_gateway_name" {
  description = "Nombre de la VPN Gateway"
}
