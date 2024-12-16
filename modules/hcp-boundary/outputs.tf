output "boundary_cluster_url" {
  value = hcp_boundary_cluster.this.cluster_url
}

output "boundary_cluster_username" {
  value     = hcp_boundary_cluster.this.username
  sensitive = true
}

output "boundary_cluster_password" {
  value     = hcp_boundary_cluster.this.password
  sensitive = true
}
