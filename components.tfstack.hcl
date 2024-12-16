component "hcp_boundary" {
  source = "./modules/hcp-boundary"

  providers = {
    hcp = provider.hcp.this
    random = provider.random.this
  }

  inputs = {
    hcp_project_id = var.hcp_project_id
  }
}
