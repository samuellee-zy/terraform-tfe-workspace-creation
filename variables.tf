variable "tfc_organisation" {
  description = "String value of TFC Organisation"
  type        = string
  default     = "samuellee-dev"
}

variable "tfc_workspace_name" {
  description = "Name of TFC workspace"
  type        = string
}

variable "vcs_provider_type" {
  description = "Type of VCS provider"
  type        = string
}

variable "repository_identifier" {
  description = "Address of the repository to attach to workspace"
  type        = string
}

variable "tfc_project_name" {
  description = "Name of TFC project"
  type        = string
}
