variable "dataproc_name" {
  type = string
}

variable "bucket_name" {
  type = string

}

variable "dataproc_region" {
  type = string

}

variable "data_proc_zone" {
  type = string
}


variable "secure_boot" {
  type = bool
}

variable "master_num_instance" {
  type = number

}

variable "wkstation_machine_type" {
  type = string
}

variable "disk_type" {
  type = string

}

variable "wkstation_boot_disk_size_gb" {
  type = number
}

variable "worker_num_instance" {
  type = number
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

variable "dataproc_network" {
  type = string
}