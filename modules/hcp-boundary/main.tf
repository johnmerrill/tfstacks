locals {
  hcp_cluster_name = "boundary-${var.environment}"
}

resource "random_password" "name" {
  length = 16
}

resource "hcp_boundary_cluster" "this" {
  cluster_id = local.hcp_cluster_name
  tier       = "Standard"
  password   = random_password.name.result
  username   = var.username
  project_id = var.hcp_project_id
}
