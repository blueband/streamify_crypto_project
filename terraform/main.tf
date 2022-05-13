module "firewall" {
  source            = "./modules/firewall"
  project           = var.projectid
  firewall_network  = var.project_network
  firewall_protocol = var.firewall_protocol
  kafka_port_number = var.kafka_port_number
  ip_range          = var.ip_range
  kafka_port_name = var.kafka_port_name

}


module "compute" {
  source                      = "./modules/compute"
  kafka_name                  = var.kafka_name
  airflow_name                = var.airflow_name
  compute_network             = var.project_network
  wkstation_machine_type      = var.wkstation_machine_type
  wk_stop_update_status       = var.wk_stop_update_status
  os_image                    = var.os_image
  wkstation_boot_disk_size_gb = var.wkstation_boot_disk_size_gb

}

module "storage" {
  source                = "./modules/storage"
  bucket_name           = var.bucket_name
  bucket_region         = var.project_region
  bucket_destroy_status = var.bucket_destroy_status
  bucket_access         = var.bucket_access
}

module "dataproc" {
  source                      = "./modules/dataproc"
  dataproc_name               = var.dataproc_name
  dataproc_region             = var.project_region
  bucket_name                 = var.bucket_name
  dataproc_network            = var.project_network
  data_proc_zone              = var.project_zone
  secure_boot                 = var.secure_boot
  master_num_instance         = var.master_num_instance
  wkstation_machine_type      = var.wkstation_machine_type
  disk_type                   = var.disk_type
  wkstation_boot_disk_size_gb = var.wkstation_boot_disk_size_gb
  worker_num_instance         = var.worker_num_instance
  worker_machine_type         = var.worker_machine_type
  worker_image_version        = var.worker_image_version
  other_copmonents            = var.other_copmonents
}


module "bigquery" {
  source                     = "./modules/bigquery"
  stg_bq_dataset             = var.stg_bq_dataset
  prod_bq_dataset            = var.prod_bq_dataset
  bq_project_id              = var.projectid
  bq_region                  = var.project_region
  contents_destroy_on_delete = var.contents_destroy_on_delete
}