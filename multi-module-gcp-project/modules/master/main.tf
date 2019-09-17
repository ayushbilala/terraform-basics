resource "google_compute_instance" "vm_instance" {
  name         = "terraform-master-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "${google_compute_network.vpc_master_network.self_link}"
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_master_network" {
  name                    = "terraform-master-network"
  auto_create_subnetworks = "true"
}
