variable "project" {
  description = "Firewall name"
  type        = string
}

variable "kafka_port_name" {
  description = "Kafka broker port"
  type        = list(any)
}

variable "network" {
  description = "Opens port 9092 in the Kafka VM for Spark cluster to connect"
  type        = string
}

variable "firewall_protocol" {
  type = string

}

variable "kafka_port_number" {
  type = string
}

variable "ip_range" {
  type = string

}

variable "tag" {
  default = "kafka"
}