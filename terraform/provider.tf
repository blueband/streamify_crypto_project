# The configuration for the `remote` backend.
terraform {
  backend "gcs" {
    bucket = "tf-tfstatefile"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.projectid
  region  = var.region
  zone    = var.compute_zone
}