provider "google" {
  project = var.project_id
  region  = var.region
}
resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  # Initial node count
  initial_node_count = 1

  # Node configuration
  node_config {
    machine_type = "e2-small"  # Tipo de instancia más pequeño
    disk_size_gb = 10          # Tamaño de disco más pequeño
  }
}

