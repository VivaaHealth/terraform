variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

#
# [ Node Pool ]
#


variable "cluster_node_pool_a_autoscale_min_node_count" {
  type = string
}

variable "cluster_node_pool_a_autoscale_max_node_count" {
  type = string
}

variable "cluster_node_pool_b_autoscale_min_node_count" {
  type = string
}

variable "cluster_node_pool_b_autoscale_max_node_count" {
  type = string
}
