# output "petname" {
#   description = "Generated petname"
#   value       = component.random_pet.name
#   type        = string
# }

# output "id" {
#   description = "random id"
#   type        = string
#   value       = component.random_id.id
# }

output "boundary_cluster_url" {
  description = "Boundary cluster URL"
  value       = component.hcp_boundary.boundary_cluster_url
  type        = string
}

output "boundary_cluster_username" {
  description = "Boundary cluster username"
  value       = component.hcp_boundary.boundary_cluster_username
  type        = string
}

output "boundary_cluster_password" {
  description = "Boundary cluster password"
  value       = component.hcp_boundary.boundary_cluster_password
  type        = string
}
