provider "null" {}

# Output the Git branch name directly from the environment variable
output "git_branch_name" {
  value = env("TFC_CONFIGURATION_VERSION_GIT_BRANCH")
}

# Optionally, you can add a resource to demonstrate usage
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo The Git branch connected to the workspace is: ${env("TFC_CONFIGURATION_VERSION_GIT_BRANCH")}"
  }
}
