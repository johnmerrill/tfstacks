store "varset" "hcp" {
  id       = "varset-zbj89TPNiALdGJE9"
  category = "terraform"
}

deployment "hcp-boundary" {
  inputs = {
    hcp_client_id     = store.varset.hcp.client_id
    hcp_client_secret = store.varset.hcp.client_secret
    hcp_project_id    = "77ecb166-5999-4964-bfb2-932a5b5a5964"
  }
}

deployment "boundary" {
  inputs = {
    boundary_addr          = component.hcp_boundary.boundary_cluster_url
    auth_method_login_name = component.hcp_boundary.boundary_cluster_username
    auth_method_password   = component.hcp_boundary.boundary_cluster_password
  }
}

orchestrate "auto_approve" "hcp-boundary" {
  check {
    condition = context.plan.applyable == true
    reason    = "auto apporve"
  }
}
