terraform {
  backend "gcs" {
    bucket  = "ab-project-dev-tfstate"
    prefix  = "terraform/worker_state"
  }
}
