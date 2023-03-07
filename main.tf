resource "vault_mount" "backend" {
  for_each = toset(var.backends)
  path     = each.key
  type     = each.key
}
