<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.58.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.tfc-demo](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_oauth_client.client](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/oauth_client) | data source |
| [tfe_organization.tfc_org](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |
| [tfe_project.Demos](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository_identifier"></a> [repository\_identifier](#input\_repository\_identifier) | Address of the repository to attach to workspace | `string` | n/a | yes |
| <a name="input_tfc_organisation"></a> [tfc\_organisation](#input\_tfc\_organisation) | String value of TFC Organisation | `string` | `"samuellee-dev"` | no |
| <a name="input_tfc_workspace_name"></a> [tfc\_workspace\_name](#input\_tfc\_workspace\_name) | Name of TFC workspace | `string` | n/a | yes |
| <a name="input_vcs_provider_type"></a> [vcs\_provider\_type](#input\_vcs\_provider\_type) | Type of VCS provider | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_provider_type"></a> [service\_provider\_type](#output\_service\_provider\_type) | n/a |
| <a name="output_tfe_workspace_name"></a> [tfe\_workspace\_name](#output\_tfe\_workspace\_name) | n/a |
| <a name="output_tfe_workspace_vcs_provider"></a> [tfe\_workspace\_vcs\_provider](#output\_tfe\_workspace\_vcs\_provider) | n/a |
<!-- END_TF_DOCS -->