provider "null" {}

# Output the Git branch name directly from the TFC_CONFIGURATION_VERSION_GIT_BRANCH environment variable
output "git_branch_name" {
  value = lookup(var, "TFC_CONFIGURATION_VERSION_GIT_BRANCH", "not set")
}

# Optionally, you can add a resource to demonstrate usage
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo The Git branch connected to the workspace is: ${lookup(var, "TFC_CONFIGURATION_VERSION_GIT_BRANCH", "not set")}"
  }
}
