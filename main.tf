provider "null" {}

# Get the Git branch from the environment variable
variable "git_branch" {
  description = "The Git branch connected to the workspace"
  type        = string
  default     = ""
}

# Use the environment variable if set
locals {
  branch_name = length(var.git_branch) > 0 ? var.git_branch : (lookup(var, "TFC_CONFIGURATION_VERSION_GIT_BRANCH", "not set"))
}

# Output the Git branch name
output "git_branch_name" {
  value = local.branch_name
}

# Optionally, you can add a resource to demonstrate usage
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo The Git branch connected to the workspace is: ${local.branch_name}"
  }
}
