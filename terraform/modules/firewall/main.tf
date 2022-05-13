resource "google_compute_firewall" "port_rules" {
  project     = var.project
  name        = var.kafka_port
  network     = var.network
  description = "Opens port 9092 in the Kafka VM for Spark cluster to connect"

  allow {
    protocol = var.firewall_protocol
    ports    = var.kafka_port_number
  }

  source_ranges = [var.ip_range]
  target_tags   = [var.tag]

}
