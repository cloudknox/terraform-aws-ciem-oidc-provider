<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.70 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.70 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_openid_connect_provider.ciem_oidc_idp](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_openid_connect_provider) | resource |
| [aws_iam_policy.ciem_oidc_access_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.ciem_oidc_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_caller_identity.oidc_provider_account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_authority_uri"></a> [azure\_authority\_uri](#input\_azure\_authority\_uri) | indicates a uri that the aws app inside azure active directory can request tokens from | `string` | `"sts.windows.net"` | no |
| <a name="input_azure_sp_client_id"></a> [azure\_sp\_client\_id](#input\_azure\_sp\_client\_id) | the client id of the service principal that was created during onboarding | `string` | n/a | yes |
| <a name="input_ciem_oidc_role_name"></a> [ciem\_oidc\_role\_name](#input\_ciem\_oidc\_role\_name) | name of the oidc iam role | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | id of the tenant where the application is created | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->