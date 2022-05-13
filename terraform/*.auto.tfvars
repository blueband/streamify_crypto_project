project_region              = "us-east1"
project_zone                = "us-east1-b"
wkstation_boot_disk_size_gb = 30
wkstation_machine_type      = "e2-standard-2" # default machine_type is e2-standard-2, tested with e2-highmem-4
os_image                    = "ubuntu-os-cloud/ubuntu-2110"
desired_status              = "RUNNING" # optional can either take RUNNING or TERMINATED values.
machine_name                = "workstation-4-development"
disk_type                   = "pd-ssd"
wk_stop_update_status       = true # To take advantage of upgrade machine type on GCP
kafka_port_name             = "kafka-broker-port"
firewall_protocol           = "tcp"
kafka_port_number           = ["9092"]
ip_range                    = "0.0.0.0/0"

kafka_name            = "streamify-kafka-instance"
airflow_name          = "streamify-airflow-instance"
bucket_access         = true
bucket_destroy_status = true

# ************************* Dataproc
dataproc_name        = "streamify-multinode-spark-cluster"
secure_boot          = true
master_num_instance  = 1
worker_num_instance  = 2
worker_machine_type  = "e2-medium"
worker_image_version = "2.0-debian10"
other_copmonents     = ["JUPYTER"]


# ************************ BigQuery
contents_destroy_on_delete = true
stg_bq_dataset             = "streamify_stg"
prod_bq_dataset            = "streamify_prod"

network = "default"