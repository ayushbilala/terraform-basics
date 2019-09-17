variable "region" {
  default = "us-east4"
}

variable "zone" {
  default = "us-east4-c"
}

variable "machine_type_by_env" {
    type = "map"
    default = {
        "dev"     = "f1-micro"
        "staging" = "f1-nano"
        "prod"    = "f1-large"
    }
}
