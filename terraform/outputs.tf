output "gke_cluster_name" {
  value = module.gke.cluster_name
}

output "vpn_gateway_ip" {
  value = module.vpn.vpn_gateway_ip
}