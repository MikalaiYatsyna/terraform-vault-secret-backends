resource "vault_mount" "backend" {
  for_each = {
    for index, backend in var.backends : backend.type => backend
  }
  type = each.value.type
  path = each.value.path
}

resource "vault_pki_secret_backend_root_cert" "pki" {
  count                = contains(toset(var.backends[*].type), "pki") ? 1 : 0
  depends_on           = [vault_mount.backend]
  backend              = var.backends[index(var.backends[*].type, "pki")].path
  common_name          = "cluster.local"
  ttl                  = "8760h"
  exclude_cn_from_sans = true
  key_type             = "rsa"
  key_bits             = 4096
  type                 = "internal"
}
