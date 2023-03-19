resource "vault_mount" "backend" {
  for_each = {
    for index, backend in var.backends:
      backend => backend
  }
  path     = each.value.type
  type     = each.value.path
}

resource "vault_pki_secret_backend_root_cert" "pki" {
  count = contains("pki", toset(var.backends.type))
  backend              = var.backends[index(var.backends.*.type, "pki")]
  common_name          = "cluster.local"
  ttl                  = "8760h"
  exclude_cn_from_sans = true
  key_type             = "rsa"
  key_bits             = 4096
  type                 = "internal"
}
