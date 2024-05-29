provider "google" {
  project = var.project_id
  region  = var.region
}

# Configuración del clúster de Kubernetes (GKE)
resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
}
