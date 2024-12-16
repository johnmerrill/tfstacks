variable "hcp_project_id" {
  type = string
}

variable "hcp_client_id" {
  type      = string
  sensitive = true
  ephemeral = true
}

variable "hcp_client_secret" {
  type      = string
  sensitive = true
  ephemeral = true
}

variable "boundary_addr" {
  type = string
}

variable "boundary_auth_method_login_name" {
  type = string
}

variable "boundary_auth_method_password" {
  type      = string
  sensitive = true
}
