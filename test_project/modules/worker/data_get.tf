data "terraform_remote_state" "myvpc" {
  backend = "gcs"
  config = {
    bucket  = "ab-project-dev-tfstate"
    prefix  = "terraform/master_state"
  }
}
