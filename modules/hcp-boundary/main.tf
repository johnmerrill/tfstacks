# resource "hcp_boundary_cluster" "example" {
#   cluster_id = "boundary-cluster"
#   username   = "test-user"
#   password   = "Password123!"
#   maintenance_window_config {
#     day          = "TUESDAY"
#     start        = 2
#     end          = 12
#     upgrade_type = "SCHEDULED"
#   }
# }
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
