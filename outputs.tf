output "backend" {
  value = tomap({
    vault_mount.backend[*].type = vault_mount.backend[*].path
  })
}
