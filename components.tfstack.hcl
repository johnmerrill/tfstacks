component "hcp_boundary" {
  source = "./modules/hcp-boundary"

  providers = {
    hcp    = provider.hcp.this
    random = provider.random.this
    local  = provider.local.this
  }

  inputs = {
    hcp_project_id = var.hcp_project_id
    environment    = var.environment
  }
}

component "boundary" {
  source = "./modules/boundary"

  providers = {
    boundary = provider.boundary.this
  }
}
