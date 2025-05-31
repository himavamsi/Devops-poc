data "google_compute_image" "image" {
  project = "ubuntu-os-cloud"
  family = "ubuntu-2204-lts"
}

data "google_compute_subnetwork" "subnet" {
  region = "us-west1"
  name = var.subnet_name
}


resource "google_compute_instance" "vm" {
  name = var.vm_name
  zone = var.zone_name
  machine_type = var.machine_type
  network_interface {
    subnetwork = data.google_compute_subnetwork.subnet.id
    access_config {

    }
  }
  boot_disk {
    initialize_params {
      image = data.google_compute_image.image.self_link
    }
  }
  
  scheduling {
    provisioning_model = "SPOT"
    preemptible = true
    automatic_restart = false
  }

}
