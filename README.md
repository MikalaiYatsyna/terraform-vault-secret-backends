## Introduction
Terraform module to enable Vault backends

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.58.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.13.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_mount.backend](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |
| [aws_secretsmanager_secret_version.root_token](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/secretsmanager_secret_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backends"></a> [backends](#input\_backends) | List of backends to enable | `list(string)` | <pre>[<br>  "kv-v2",<br>  "database",<br>  "consul",<br>  "pki"<br>]</pre> | no |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | Vault https address | `string` | n/a | yes |
| <a name="input_vault_token_secret_id"></a> [vault\_token\_secret\_id](#input\_vault\_token\_secret\_id) | Id vault root token secret in AWS Secret Manager | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
