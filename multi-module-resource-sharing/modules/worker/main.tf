provider "google" {
  project = "ab-project-dev"
  region  = "${var.region}"
  zone    = "${var.zone}"
}

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
    network       = "${data.terraform_remote_state.vpc.outputs.link}"
    access_config {
    }
  }
}
