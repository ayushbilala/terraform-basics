variable "region" {
  default = "us-east4"
}

variable "zone" {
  default = "us-east4-c"
}

variable "project_name" {
  default = "ab-project-dev"
}

variable "network" {
  default = "vpc-network"
}

variable "subnetwork-region" {
  default = "us-east4"
}

variable "vm_type" {
  type = "map"
  default = {
    "512gig"     = "f1-micro"
    "1point7gig" = "g1-small"
    "7point5gig" = "n1-standard-2"
  }
}

variable "os" {
  type = "map"
  default = {
    "debian9" = "debian-cloud/debian-9"
  }
}
