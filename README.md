## Introduction
Terraform module to enable Vault backends

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.13.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_mount.backend](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/mount) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backends"></a> [backends](#input\_backends) | List of backends to enable | `list(string)` | <pre>[<br>  "kv-v2",<br>  "database",<br>  "consul"<br>]</pre> | no |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | Vault http address | `string` | n/a | yes |
| <a name="input_vault_role_name"></a> [vault\_role\_name](#input\_vault\_role\_name) | Name of vault role to use for AWS authentication | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
