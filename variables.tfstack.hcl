variable "hcp_project_id" {
  type    = string
  default = ""
}

variable "hcp_client_id" {
  type      = string
  default   = ""
  sensitive = true
  ephemeral = true
}

variable "hcp_client_secret" {
  type      = string
  default   = ""
  sensitive = true
  ephemeral = true
}

variable "boundary_addr" {
  type = string
}

variable "boundary_auth_method_login_name" {
  type      = string
  sensitive = true
}

variable "boundary_auth_method_password" {
  type      = string
  sensitive = true
}
