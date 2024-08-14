variable "git_branch" {
  type    = string
  default = ""
}

output "branch" {
  value = coalesce(
    nonsensitive(trimspace(var.git_branch)),
    "No GIT branch found"
  )
}
