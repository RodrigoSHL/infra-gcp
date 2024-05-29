output "gke_cluster_name" {
  description = "Nombre del clúster de Kubernetes (GKE)"
  value       = google_container_cluster.primary.name
}

output "vpn_gateway_ip" {
  description = "IP de la VPN Gateway"
  value       = google_compute_vpn_gateway.vpn_gateway.address
}
