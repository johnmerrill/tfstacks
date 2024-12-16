required_providers {
  hcp = {
    source  = "hashicorp/hcp"
    version = "~> 0.100"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.0"
  }
}

provider "hcp" "this" {
  config {
    client_id     = var.hcp_client_id
    client_secret = var.hcp_client_secret
  }
}

provider "random" "this" {}
