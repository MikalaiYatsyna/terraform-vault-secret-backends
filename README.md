## Introduction
Terraform module to enable Vault backends

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.7.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.58.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | 3.13.0 |

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
| [vault_mount.backend](https://registry.terraform.io/providers/hashicorp/vault/3.13.0/docs/resources/mount) | resource |
| [vault_pki_secret_backend_root_cert.pki](https://registry.terraform.io/providers/hashicorp/vault/3.13.0/docs/resources/pki_secret_backend_root_cert) | resource |
| [aws_secretsmanager_secret_version.root_token](https://registry.terraform.io/providers/hashicorp/aws/4.58.0/docs/data-sources/secretsmanager_secret_version) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_backends"></a> [backends](#input\_backends) | List of backends to enable | <pre>list(object({<br>    type = string<br>    path = string<br>  }))</pre> | <pre>[<br>  {<br>    "path": "kv",<br>    "type": "kv-v2"<br>  },<br>  {<br>    "path": "db",<br>    "type": "database"<br>  },<br>  {<br>    "path": "pki",<br>    "type": "pki"<br>  }<br>]</pre> | no |
| <a name="input_vault_address"></a> [vault\_address](#input\_vault\_address) | Vault https address | `string` | n/a | yes |
| <a name="input_vault_token_secret_id"></a> [vault\_token\_secret\_id](#input\_vault\_token\_secret\_id) | Id vault root token secret in AWS Secret Manager | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_backend"></a> [backend](#output\_backend) | n/a |
<!-- END_TF_DOCS -->
