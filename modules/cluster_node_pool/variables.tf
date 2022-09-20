variable "region" {
  type = string
}

variable "machine_type" {
  type    = string
  default = "n1-standard-4"
}

variable "cluster_name" {
  type = string
}

variable "node_pool_autoscale_min_node_count" {
  type = string
}

variable "node_pool_autoscale_max_node_count" {
  type = string
}

variable "local_ssd_count" {
  type        = number
  default     = 0
  description = "number of local ssds to attach to each node; each ssd is 375GB"
}

variable "name" {
  type        = string
  description = "name of node pool"
}
