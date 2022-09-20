module "node_pool_a" {
  source                             = "../../modules/cluster_node_pool"
  region                             = var.region
  name                               = "${var.cluster_name}-node-pool-a"
  machine_type                       = "some_machine_type"
  cluster_name                       = var.cluster_name
  node_pool_autoscale_min_node_count = var.cluster_node_pool_a_autoscale_min_node_count
  node_pool_autoscale_max_node_count = var.cluster_node_pool_a_autoscale_max_node_count
}

module "node_pool_b" {
  source                             = "../../modules/cluster_node_pool"
  region                             = var.region
  name                               = "${var.cluster_name}-node-pool-b"
  machine_type                       = "some_machine_type"
  cluster_name                       = var.cluster_name
  node_pool_autoscale_min_node_count = var.cluster_node_pool_b_autoscale_min_node_count
  node_pool_autoscale_max_node_count = var.cluster_node_pool_b_autoscale_max_node_count
}
