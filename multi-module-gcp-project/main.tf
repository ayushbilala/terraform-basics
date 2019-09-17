provider "google" {
  project = "ab-project-dev"
  region  = "${var.region}"
  zone    = "${var.zone}"
}

module "master" {
  source = "./modules/master"

}

module "worker" {
  source = "./modules/worker"
}
