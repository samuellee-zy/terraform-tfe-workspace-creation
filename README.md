<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~> 0.58.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.tfc-demo](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace_run_task.infracost](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_run_task) | resource |
| [tfe_workspace_run_task.snyk](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_run_task) | resource |
| [tfe_oauth_client.client](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/oauth_client) | data source |
| [tfe_organization.tfc_org](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization) | data source |
| [tfe_organization_run_task.infracost](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization_run_task) | data source |
| [tfe_organization_run_task.snyk](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/organization_run_task) | data source |
| [tfe_project.Demos](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_repository_identifier"></a> [repository\_identifier](#input\_repository\_identifier) | Address of the repository to attach to workspace | `string` | n/a | yes |
| <a name="input_tfc_organisation"></a> [tfc\_organisation](#input\_tfc\_organisation) | String value of TFC Organisation | `string` | `"samuellee-dev"` | no |
| <a name="input_tfc_project_name"></a> [tfc\_project\_name](#input\_tfc\_project\_name) | Name of TFC project | `string` | n/a | yes |
| <a name="input_tfc_workspace_name"></a> [tfc\_workspace\_name](#input\_tfc\_workspace\_name) | Name of TFC workspace | `string` | n/a | yes |
| <a name="input_vcs_provider_type"></a> [vcs\_provider\_type](#input\_vcs\_provider\_type) | Type of VCS provider | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_provider_type"></a> [service\_provider\_type](#output\_service\_provider\_type) | Output of the service provider type of the VCS repo |
| <a name="output_tfe_workspace_name"></a> [tfe\_workspace\_name](#output\_tfe\_workspace\_name) | Output of the TFC workspace name |
| <a name="output_tfe_workspace_vcs_provider"></a> [tfe\_workspace\_vcs\_provider](#output\_tfe\_workspace\_vcs\_provider) | Output of the information of the VCS repo attached to workspace |
<!-- END_TF_DOCS -->