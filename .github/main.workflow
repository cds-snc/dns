workflow "Lint Terraform files" {
  on = "push"
  resolves = ["Lint Terraform"]
}

action "Lint Terraform" {
  uses = "docker://cdssnc/tf-lint-github-action"
}
