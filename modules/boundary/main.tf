resource "boundary_scope" "org" {
  name                     = "tfstacks"
  scope_id                 = "global"
  auto_create_admin_role   = true
  auto_create_default_role = true
}
