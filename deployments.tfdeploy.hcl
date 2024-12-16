deployment "hcp-boundary" {
  inputs = {
    hcp_project_id = "77ecb166-5999-4964-bfb2-932a5b5a5964"
}

orchestrate "auto_approve" "hcp-boundary" {
  check {
    condition = context.plan.applyable == true
    reason    = "auto apporve"
  }
}
