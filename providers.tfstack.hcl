required_providers {
  hcp = {
    source  = "hashicorp/hcp"
    version = "~> 0.100"
  }

  local = {
    source  = "hashicorp/local"
    version = "~> 2.0"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.0"
  }

  # boundary = {
  #   source  = "hashicorp/boundary"
  #   version = "~> 1.1"
  # }
}

provider "hcp" "this" {
  config {
    client_id     = var.hcp_client_id
    client_secret = var.hcp_client_secret
  }
}

provider "local" "this" {}
provider "random" "this" {}
