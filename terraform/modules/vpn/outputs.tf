output "vpn_gateway_ip" {
  value = google_compute_address.vpn_static_ip.address
}
