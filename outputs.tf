output "tfe_workspace_name" {
  description = "Output of the TFC workspace name"
  value       = tfe_workspace.tfc-demo.name
}

output "tfe_workspace_vcs_provider" {
  description = "Output of the information of the VCS repo attached to workspace"
  value       = tfe_workspace.tfc-demo.vcs_repo[0]
}

output "service_provider_type" {
  description = "Output of the service provider type of the VCS repo"
  value       = data.tfe_oauth_client.client.service_provider
}
