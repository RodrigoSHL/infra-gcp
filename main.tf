provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}

module "gke" {
  source       = "./modules/gke"
  project_id   = var.project_id
  region       = var.region
  cluster_name = var.cluster_name
  network_name = var.network_name
  subnet_name  = var.subnet_name
}

module "vpn" {
  source           = "./modules/vpn"
  project_id       = var.project_id
  region           = var.region
  vpn_gateway_name = var.vpn_gateway_name
  peer_ip          = var.peer_ip
  shared_secret    = var.shared_secret
  network_name     = var.network_name
}
