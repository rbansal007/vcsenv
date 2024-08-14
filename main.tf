provider "null" {}

# Output the Git branch name directly from the TFC_CONFIGURATION_VERSION_GIT_BRANCH variable
output "git_branch_name" {
  value = var.git_branch
}

# Declare a variable to hold the Git branch name
variable "git_branch" {
  description = "The Git branch connected to the workspace"
  type        = string
  default     = ""
}

# Optionally, you can add a resource to demonstrate usage
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo The Git branch connected to the workspace is: ${var.git_branch}"
  }
}
