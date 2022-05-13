variable "project" {
  description = "Firewall name"
  type        = string
}

variable "kafka_port_name" {
  description = "Kafka broker port"
  type        = string
}

variable "firewall_network" {
  description = "Opens port 9092 in the Kafka VM for Spark cluster to connect"
  type        = string
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

variable "tag" {
  default = "kafka"
}