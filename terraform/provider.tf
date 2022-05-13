# The configuration for the `remote` backend.
terraform {
  backend "gcs" {
    bucket = "tf-tfstatefile"
    prefix = "terraform/streamify"
  }
}

provider "google" {
  project = var.projectid
  region  = var.project_region
  zone    = var.project_zone
}