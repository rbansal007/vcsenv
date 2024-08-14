provider "null" {}

variable "TFC_CONFIGURATION_VERSION_REPO_ID" {
  type    = string
  default = "not set"
}

output "git_repo_name" {
  value = var.TFC_CONFIGURATION_VERSION_REPO_ID
}

resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo The Git repo connected to the workspace is: ${var.TFC_CONFIGURATION_VERSION_REPO_ID}"
  }
}
