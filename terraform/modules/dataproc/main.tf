resource "google_dataproc_cluster" "mulitnode_spark_cluster" {
  name   = var.dataproc_name
  region = var.dataproc_region

  cluster_config {

    staging_bucket = var.bucket_name

    gce_cluster_config {
      network = var.network
      zone    = var.data_proc_zone

      shielded_instance_config {
        enable_secure_boot = var.secure_boot
      }
    }

    master_config {
      num_instances = var.master_num_instance
      machine_type  = var.wkstation_machine_type
      disk_config {
        boot_disk_type    = var.disk_type
        boot_disk_size_gb = var.wkstation_boot_disk_size_gb
      }
    }

    worker_config {
      num_instances = var.worker_num_instance
      machine_type  = var.worker_machine_type
      disk_config {
        boot_disk_size_gb = var.wkstation_boot_disk_size_gb
      }
    }

    software_config {
      image_version = var.worker_image_version
      override_properties = {
        "dataproc:dataproc.allow.zero.workers" = "true"
      }
      optional_components = var.other_copmonents
    }

  }

}
