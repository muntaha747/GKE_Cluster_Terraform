resource "google_service_account" "default" {
  account_id   = "service-account-id"
  display_name = "Service Account"
}

resource "google_container_cluster" "primary" {
  name     = "${var.cluster_name}-cluster"
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 2
  enable_autopilot = true
  node_config { 
    machine_type = "e2-medium"
  }
  network = "default"
  subnetwork = "default"
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "${var.cluster_name}-node-pool"
  location   = var.region
  cluster    = google_container_cluster.primary.id
  node_count = 2

  node_config {
    preemptible  = true
    machine_type = "e2-medium"


    service_account = google_service_account.default.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}