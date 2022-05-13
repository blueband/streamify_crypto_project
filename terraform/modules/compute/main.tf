
resource "google_compute_instance" "kafka_vm_instance" {
  name                      = var.kafka_name
  machine_type              = var.wkstation_machine_type
  tags                      = ["kafka"]
  allow_stopping_for_update = var.wk_stop_update_status

  boot_disk {
    initialize_params {
      image = var.os_image
      size  = var.wkstation_boot_disk_size_gb
    }
  }

  network_interface {
    network = var.network
    access_config {
    }
  }
}


resource "google_compute_instance" "airflow_vm_instance" {
  name                      = var.airflow_name
  machine_type              = var.wkstation_machine_type
  tags                      = ["airflow"]
  allow_stopping_for_update = var.wk_stop_update_status

  boot_disk {
    initialize_params {
      image = var.os_image
      size  = var.wkstation_boot_disk_size_gb
    }
  }

  network_interface {
    network = var.network
    access_config {
    }
  }
}