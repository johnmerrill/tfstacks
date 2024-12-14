component "random_id" {
  source = "./modules/id"

  providers = {
    random = provider.random.this
  }
}
