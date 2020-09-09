terraform {
    backend "remote" {
    organization = "karthikeayan-practice"

    workspaces {
        name = "dev"
    }
    }
}

# An example resource that does nothing.
resource "null_resource" "example" {
    triggers = {
      value = "A example resource that does nothing!"
    }
}

module "karthik_devops" {
  source = "git@github.com:karthikeayan/devops?ref=master"
  key    = "value"
}
