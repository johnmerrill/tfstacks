store "varset" "hcp" {
  id       = "varset-zbj89TPNiALdGJE9"
  category = "terraform"
}

deployment "dev" {
  inputs = {
    environment       = "dev"
    hcp_client_id     = store.varset.hcp.client_id
    hcp_client_secret = store.varset.hcp.client_secret
    hcp_project_id    = store.varset.hcp.hcp_project_id
  }
}

# orchestrate "auto_approve" "dev" {
#   check {
#     condition = context.plan.applyable == true && context.plan.deployment == "dev"
#     reason    = "auto apporve"
#   }
# }
