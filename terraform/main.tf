provider "google" {
  project = var.project_id
  region  = var.region
}
resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  # Número inicial de nodos
  initial_node_count = 1

  # Configuración del nodo
  node_config {
    machine_type = "e2-small"  # Tipo de instancia más pequeño
    disk_size_gb = 10          # Tamaño de disco más pequeño
  }
}

