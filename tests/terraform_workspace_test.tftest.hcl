
variables {
    tfc_organisation = "samuellee-dev"
    tfc_workspace_name = "tfc-demo-env"
    vcs_provider_type = "bitbucket_hosted"
    repository_identifier = "samuellee-dev-personal/workspace"
    tfc_project_name = "Demos"
}

  # Set up the test by applying the configuration
run "valid_workspace_name" {
# Check that the TFE workspace exists with the correct name
    command = plan
    assert {
        condition = tfe_workspace.tfc-demo.name == "tfc-demo-env"
        error_message = "Name of workspace didn't match variable name"
    }
}

run "vcs_provider_type" {
# Check that the vcs provider type is as expected
    command = plan
    assert {
        condition = data.tfe_oauth_client.client.service_provider == "bitbucket_hosted"
        error_message = "Service Provider type is not bitbucket_hosted"
    }
}

run "workspace_tags_expected" {
# Check that the tag associated with workspace contains tfe_provider
    command = plan
    assert {
        condition = contains(tfe_workspace.tfc-demo.tag_names, "tfe_provider")
        error_message = "Tag contains tfe_provider"
    }
}
  

