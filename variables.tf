variable "vault_address" {
  type        = string
  description = "Vault https address"
}

variable "vault_token_secret_id" {
  type        = string
  description = "Id vault root token secret in AWS Secret Manager"
  sensitive   = true
}

variable "backends" {
  type        = list(object({
    type = string
    path = string
  }))
  description = "List of backends to enable"
  default     = [
    {
      type = "kv-v2"
      path = "kv"
    },
    {
      type = "database",
      path = "db"
    },
    {
      type = "pki",
      path = "pki"
    }
  ]
}
