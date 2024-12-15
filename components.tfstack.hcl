component "random_id" {
  source = "./modules/id"

  providers = {
    random = provider.random.this
  }

  inputs = {
    prefix = component.random_pet.outputs.prefix
  }
}

component "random_pet" {
  source = "./modules/pet"

  providers = {
    random = provider.random.this
  }
}
