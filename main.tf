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
    command = "echo Hello, World!"
  }
}

output "hello_world_output" {
  value = "Check the Terraform output for 'Hello, World!' after applying."
}
