provider "aws" {}

data "aws_secretsmanager_secret_version" "root_token" {
  secret_id = var.vault_token_secret_id
}

provider "vault" {
  address = var.vault_address
  token   = jsondecode(data.aws_secretsmanager_secret_version.root_token.secret_string)["token"]
}
