output "vm_ip" {
  value = google_compute_instance.vm.network_interfaces[0].network_ip
}

output "vm_name" {
  value = google_compute_instance.vm.name
}
