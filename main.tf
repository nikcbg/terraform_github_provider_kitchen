variable "github_token" {
  type = "string"
}

variable "organization_name" {
  type = "string"
}

variable "repo_name" {
  type = "string"
}

provider "github" {
  token        = "${var.github_token}"
  organization = "${var.organization_name}"
}

resource "github_repository" "newrepo" {
  name        = "${var.repo_name}"
  description = "New repository created with Terraform"
}

output "repo_name" {
  value = "${var.repo_name}"
}

output "org_name" {
  value = "${var.organization_name}"
}
