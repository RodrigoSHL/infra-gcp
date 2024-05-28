variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region to deploy the cluster in"
  type        = string
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
  default     = "my-gke-cluster"
}

variable "network_name" {
  description = "The name of the VPC network"
  type        = string
  # default     = "my-vpc-network"
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
  # default     = "my-subnet"
}

variable "vpn_gateway_name" {
  description = "The name of the VPN gateway"
  type        = string
  # default     = "my-vpn-gateway"
}

variable "peer_ip" {
  description = "The IP address of the peer VPN gateway"
  # type        = string
}

variable "shared_secret" {
  description = "The shared secret for the VPN"
  type        = string
  sensitive   = true
}