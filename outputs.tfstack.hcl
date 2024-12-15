output "petname" {
  description = "Generated petname"
  value       = component.random_pet.name
  type        = string
}

# output "unique_name_of_output" {
#   description = "Description of the purpose of this output"
#   value       = component.component_name.some_value
# }
