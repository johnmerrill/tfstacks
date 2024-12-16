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
#
resource "hcp_boundary_cluster" "this" {
  cluster_id = "boundary"
  tier       = "Standard"
  password   = var.password
  username   = var.username
  project_id = var.hcp_project_id
}
