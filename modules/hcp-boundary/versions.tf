terraform {
  required_version = "~> 1.10"

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
}
