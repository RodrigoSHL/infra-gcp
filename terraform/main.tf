provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region

  # Initial node count is set to 1 to satisfy the requirement
  initial_node_count = 1

  remove_default_node_pool = true  # Remove the default node pool created by GKE
}

resource "google_container_node_pool" "primary_nodes" {
  cluster    = google_container_cluster.primary.name
  location   = var.region
  node_count = 1  # Define the exact number of nodes here

  node_config {
    machine_type = "e2-small"
    disk_size_gb = 10
  }
}
