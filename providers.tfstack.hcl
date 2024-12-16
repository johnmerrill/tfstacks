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

provider "hcp" "this" {}
provider "random" "this" {}
