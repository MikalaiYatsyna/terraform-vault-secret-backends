output "backend" {
  value = {
    for resource in vault_mount.backend : resource.type => resource.path
  }
}
