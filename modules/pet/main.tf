resource "random_pet" "this" {
  length = 2
}

output "name" {
  value = random_pet.this.id
}
