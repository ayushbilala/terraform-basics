data "terraform_remote_state" "gcs-backend" {
  backend = "gcs"
  config = {
    bucket  = "ab-project-dev-tfstate"
  }
}
