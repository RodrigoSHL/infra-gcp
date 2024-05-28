resource "google_compute_vpn_gateway" "vpn_gw" {
  name    = var.vpn_gateway_name
  network = var.network_name
  region  = var.region
}

resource "google_compute_address" "vpn_static_ip" {
  name   = "${var.vpn_gateway_name}-ip"
  region = var.region
}

resource "google_compute_vpn_tunnel" "vpn_tunnel" {
  name          = "${var.vpn_gateway_name}-tunnel"
  region        = var.region
  target_vpn_gateway = google_compute_vpn_gateway.vpn_gw.self_link
  peer_ip       = var.peer_ip
  shared_secret = var.shared_secret

  ike_version = 2

  local_traffic_selector  = ["0.0.0.0/0"]
  remote_traffic_selector = ["0.0.0.0/0"]
}

resource "google_compute_forwarding_rule" "vpn_forwarding_rule" {
  name       = "${var.vpn_gateway_name}-rule"
  region     = var.region
  ip_protocol = "ESP"
  target     = google_compute_vpn_gateway.vpn_gw.self_link
}
