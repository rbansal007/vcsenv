provider "null" {}

# Declare the variable
variable "TFC_CONFIGURATION_VERSION_REPO_ID" {
  type    = string
  default = "not set"
}

# Output the Git branch name directly from the TFC_CONFIGURATION_VERSION_GIT_BRANCH environment variable
output "git_branch_name" {
  value = var.TFC_CONFIGURATION_VERSION_REPO_ID
}

# Optionally, you can add a resource to demonstrate usage
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo The Git branch connected to the workspace is: ${var.TFC_CONFIGURATION_VERSION_REPO_ID}"
  }
}
