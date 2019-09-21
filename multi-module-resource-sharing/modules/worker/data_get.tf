data "terraform_remote_state" "vpc" {
  backend = "gcs"
  config = {
    bucket  = "ab-project-dev-tfstate"
    prefix  = "terraform/master-state"
  }
}
