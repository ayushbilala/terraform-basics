resource "google_compute_instance" "vm_instance" {
  name         = "terraform-worker-instance"
  machine_type = "${var.vm_type["512gig"]}"

  zone = "${var.zone}"

  boot_disk {
    initialize_params {
      image = "${var.os["debian9"]}"
    }
  }

  network_interface {
    subnetwork = "${data.terraform_remote_state.vpc.outputs.subnet}"
    access_config {
    }
  }
}
