output "repo_id" {
  value = coalesce(
    nonsensitive(trimspace(var.repo_id)),
    "No repository ID found"
  )
}

variable "repo_id" {
  type    = string
  default = ""
}
