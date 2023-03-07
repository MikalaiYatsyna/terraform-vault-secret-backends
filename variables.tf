variable "vault_address" {
  type        = string
  description = "Vault http address"
}

variable "vault_role_name" {
  type        = string
  description = "Name of vault role to use for AWS authentication"
}

variable "backends" {
  type        = list(string)
  description = "List of backends to enable"

  default = ["kv-v2", "database", "consul"]
}
