resource "google_compute_instance" "vm_instance" {
  name         = "terraform-worker-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "${google_compute_network.vpc_worker_network.self_link}"
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_worker_network" {
  name                    = "terraform-worker-network"
  auto_create_subnetworks = "true"
}
