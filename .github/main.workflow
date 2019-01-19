workflow "New workflow" {
  on = "push"
  resolves = ["Run NPM build"]
}

action "Install NPM dependencies" {
  uses = "actions/npm@de7a3705a9510ee12702e124482fad6af249991b"
  args = "install"
}

action "Run NPM build" {
  uses = "actions/npm@de7a3705a9510ee12702e124482fad6af249991b"
  args = "run build"
  needs = ["Install NPM dependencies"]
}
