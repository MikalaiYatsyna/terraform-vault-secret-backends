provider "vault" {
  address = var.vault_address
  auth_login_aws {
    role = var.vault_role_name
  }
}
