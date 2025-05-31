output "parent_vpc_id" {
  value = google_compute_network.vpc.self_link
}

output "parent_subnet_id" {
  value = google_compute_subnetwork.subnet.self_link
}
