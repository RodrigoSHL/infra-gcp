provider "google" {
  project = var.project_id
  region  = var.region
}

# Configuración de la VPN Gateway existente
resource "google_compute_vpn_gateway" "vpn_gateway" {
  name    = var.vpn_gateway_name
  network = var.network_name
}

# Configuración del clúster de Kubernetes (GKE)
resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  # Otros ajustes según sea necesario
}
