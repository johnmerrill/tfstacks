terraform {
  required_version = "~> 1.10"

  required_providers {
    boundary = {
      source  = "hashicorp/boundary"
      version = "~> 1.1"
    }
  }
}
