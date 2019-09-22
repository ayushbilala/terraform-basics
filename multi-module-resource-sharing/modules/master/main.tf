resource "google_compute_instance" "vm_instance" {
  name         = "terraform-master-instance"
  machine_type = "${var.vm_type["512gig"]}"

  zone = "${var.zone}"

  boot_disk {
    initialize_params {
      image = "${var.os["debian9"]}"
    }
  }

  network_interface {
    subnetwork = "${google_compute_subnetwork.vpc_network_subnetwork.name}"
    access_config {
    }
  }
}
