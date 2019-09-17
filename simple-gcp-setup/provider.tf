provider "google" {
  project = "ab-project-dev"
  region  = "${var.region}"
  zone    = "${var.zone}"
}
