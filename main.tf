terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0" # Or latest version
    }
  }
}

resource "null_resource" "hello_world" {
  provisioner "local-exec" {
    command = "echo Hello, World!! This is a PR"
  }
}

output "hello_world_output" {
  value = "Check the Terraform output for 'Hello, World!!' after applying. PR apply"
}
