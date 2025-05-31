resource "google_compute_network" "vpc" {
  name = var.vpc_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name = var.subnet_name
  ip_cidr_range = "10.0.0.0/28"
  region = var.region
  network = google_compute_network.vpc.id
}

resource "google_compute_firewall" "firewall" {
  name = var.firewall_name
  network = google_compute_network.vpc.id
  allow {
    ports = [ "22","80","8080" ]
    protocol = "tcp"
  }
  source_ranges = ["0.0.0.0/0"]
  direction = "INGRESS"
}
