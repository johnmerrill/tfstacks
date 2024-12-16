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
    hcp_client_id     = store.varset.hcp.client_id
    hcp_client_secret = store.varset.hcp.client_secret
  }
}

orchestrate "auto_approve" "hcp-boundary" {
  check {
    condition = context.plan.applyable == true
    reason    = "auto apporve"
  }
}
