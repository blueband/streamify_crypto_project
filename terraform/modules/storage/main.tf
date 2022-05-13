resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.bucket_region
  force_destroy = var.bucket_destroy_status

  uniform_bucket_level_access = var.bucket_access

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30 # days
    }
  }
}
