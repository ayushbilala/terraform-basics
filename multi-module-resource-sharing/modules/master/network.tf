resource "google_compute_network" "vpc_network" {
  name                    = "${var.network}"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vpc_network_subnetwork" {
  name          = "${var.network}-subnetwork-${var.subnetwork-region}"
  region        = "${var.subnetwork-region}"
  network       = "${google_compute_network.vpc_network.self_link}"
  ip_cidr_range = "10.0.0.0/16"
}
