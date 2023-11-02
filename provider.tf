terraform {
  cloud {
    organization = "example-gha-pr"

    workspaces {
      name = "example-gha-pr"
    }
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = var.owner
  token = var.token
}
