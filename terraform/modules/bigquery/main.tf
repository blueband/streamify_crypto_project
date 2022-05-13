resource "google_bigquery_dataset" "stg_dataset" {
  dataset_id                 = var.stg_bq_dataset
  project                    = var.bq_project_id
  location                   = var.bq_region
  delete_contents_on_destroy = var.contents_destroy_on_delete
}

resource "google_bigquery_dataset" "prod_dataset" {
  dataset_id                 = var.prod_bq_dataset
  project                    = var.bq_project_id
  location                   = var.bq_region
  delete_contents_on_destroy = var.contents_destroy_on_delete
}
