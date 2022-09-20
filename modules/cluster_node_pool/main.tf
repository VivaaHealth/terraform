resource "google_container_node_pool" "default" {
  name       = var.name
  location   = var.region
  cluster    = var.cluster_name
  node_count = 1

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  autoscaling {
    min_node_count = var.node_pool_autoscale_min_node_count
    max_node_count = var.node_pool_autoscale_max_node_count
  }

  node_config {
    preemptible     = false
    machine_type    = var.machine_type
    image_type      = "COS" # inherently enables auto-repair
    disk_type       = "pd-standard"
    disk_size_gb    = "100"
    local_ssd_count = var.local_ssd_count

    labels = {
      nodepool = "autoscaling-pool"
    }
  }
}
