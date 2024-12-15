component "random_id" {
  source = "./modules/id"

  providers = {
    random = provider.random.this
  }

  inputs = {
    prefix = var.prefix
  }
}

component "random_pet" {
  source = "./modules/pet"

  providers = {
    random = provider.random.this
  }
}
