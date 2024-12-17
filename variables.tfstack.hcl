variable "environment" {
  type = string
}

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
