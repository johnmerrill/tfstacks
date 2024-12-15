deployment "dev" {
  # inputs = {
  # }
}

orchestrate "auto_approve" "dev" {
  check {
    condition = context.plan.applyable == true
    reason    = "auto apporve dev environment"
  }
}
