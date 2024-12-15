resource "random_id" "this" {
  byte_length = 8
  prefix      = var.prefix
}

output "id" {
  value = random_id.this.id
}

output "prefix" {
  value = random_id.this.prefix
}
