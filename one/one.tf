terraform {
    backend "remote" {
        organization = "karthikeayan-practice"

        workspaces {
            name = "one"
        }
    }
}

# An example resource that does nothing.
resource "null_resource" "example" {
    triggers = {
      value = "A example resource that does nothing!"
    }
}