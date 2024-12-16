terraform {
  required_version = "~> 1.10"

  required_providers {
    hcp = {
      source  = "hashicorp/hcp"
      version = "~> 0.100"
    }
  }
}

provider "hcp" {
  # Configuration options
}
