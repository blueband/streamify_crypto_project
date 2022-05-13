variable "project" {
  description = "Your GCP Project ID"
  type        = string
}

variable "project_region" {
  description = "Your project region"
  type        = string
}

variable "project_zone" {
  description = "Your project zone"
  type        = string
}

variable "storage_class" {
  description = "Storage class type for your bucket"
  default     = "STANDARD"
  type        = string
}

variable "os_image" {
  description = "Image for you VM"
  type        = string
}

variable "network" {
  description = "Network for your instance/cluster"
  type        = string
}

variable "stg_bq_dataset" {
  description = "Storage class type for your bucket. Check official docs for more info."
  type        = string
}

variable "prod_bq_dataset" {
  description = "Storage class type for your bucket. Check official docs for more info."
  type        = string
}

variable "bucket_name" {
  description = "The name of your bucket. This should be unique across GCP"
  type        = string
}

variable "desired_status" {
  type = string
}

variable "disk_type" {
  type = string
}

variable "wk_stop_update_status" {
  type = bool
}

variable "kafka_port_name" {
  type = string
}

variable "firewall_protocol" {
  type = string
}

variable "kafka_port_number" {
  type = list(any)

}

variable "ip_range" {
  type = string

}

variable "kafka_name" {
  type = string
}

variable "airflow_name" {
  type = string
}

variable "bucket_access" {
  type = bool
}

variable "bucket_destroy_status" {
  type = bool
}

variable "dataproc_name" {
  type = string
}

variable "secure_boot" {
  type = bool
}

variable "master_num_instance" {
  type = string
}

variable "worker_num_instance" {
  type = string
}

variable "worker_machine_type" {
  type = string
}

variable "worker_image_version" {
  type = string
}

variable "other_copmonents" {
  type = list(any)
}

variable "contents_destroy_on_delete" {
  type = bool
}

variable "stg_bq_dataset" {
  type = string
}

variable "prod_bq_dataset" {
  type = string
}

variable "network" {
  type = string
}