workflow "Lint Terraform files" {
  on = "push"
  resolves = ["Lint files"]
}

action "Lint files" {
  uses = "docker://cdssnc/tf-lint-github-action"
}
