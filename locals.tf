locals {
  project = {
    "fem-eci-project" = {
      description = "Example description of a project"
    }
  }
  workspace = {
    "fem-eci-tfe" = {
      description = "Example description of a workspace"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-tfe"
    }

    "fem-eci-github" = {
      description = "Example description of a workspace for Github"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/fem-eci-terraform-github"
    }
  }
}
