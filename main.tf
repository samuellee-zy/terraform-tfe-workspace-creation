terraform {
  required_providers {
    tfe = {
      version = "~> 0.58.0"
    }
  }
}

data "tfe_organization" "tfc_org" {
  name = var.tfc_organisation
}

data "tfe_oauth_client" "client" {
  organization     = var.tfc_organisation
  service_provider = var.vcs_provider_type
}

data "tfe_project" "Demos" {
  name         = var.tfc_project_name
  organization = var.tfc_organisation
}

resource "tfe_workspace" "tfc-demo" {
  name                           = var.tfc_workspace_name
  organization                   = data.tfe_organization.tfc_org.name
  tag_names                      = ["tfe_provider", "${var.vcs_provider_type}"]
  project_id                     = data.tfe_project.Demos.id
  assessments_enabled            = true
  auto_destroy_activity_duration = "15m"
  vcs_repo {
    branch         = "master"
    identifier     = var.repository_identifier
    oauth_token_id = data.tfe_oauth_client.client.oauth_token_id
  }
}
