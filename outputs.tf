output "tfe_workspace_name" {
  value = tfe_workspace.tfc-demo.name
}

output "tfe_workspace_vcs_provider" {
  value = tfe_workspace.tfc-demo.vcs_repo[0]
}

output "service_provider_type" {
  value = data.tfe_oauth_client.client.service_provider
}
