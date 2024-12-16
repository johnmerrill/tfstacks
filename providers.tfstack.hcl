required_providers {
  hcp = {
    source  = "hashicorp/hcp"
    version = "~> 0.100"
  }

  random = {
    source  = "hashicorp/random"
    version = "~> 3.0"
  }

  boundary = {
    source  = "hashicorp/boundary"
    version = "~> 1.1"
  }
}

provider "hcp" "this" {
  config {
    client_id     = var.hcp_client_id
    client_secret = var.hcp_client_secret
  }
}

provider "random" "this" {}

provider "boundary" "this" {
  config {
    addr                   = component.hcp_boundary.boundary_cluster_url
    auth_method_login_name = component.hcp_boundary.boundary_cluster_username
    auth_method_password   = component.hcp_boundary.boundary_cluster_password
    # auth_method_id         = var.boundary_password_auth_method_id # TODO source this from secrets manager
  }
}
