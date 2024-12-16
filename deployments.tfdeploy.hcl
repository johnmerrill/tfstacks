# deployment "dev" {
#   # inputs = {
#   #   prefix = component.random_pet.name
#   # }
# }

# deployment "prod" {
#   inputs = {
#     prefix = "prod"
#   }
# }

# orchestrate "auto_approve" "dev" {
#   check {
#     condition = context.plan.applyable == true
#     reason    = "auto apporve dev environment"
#   }
# }
