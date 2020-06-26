provider "aws" {
  version = "~> 2.27"
}

terraform {
  backend "remote" {
    organization = "Pocket"
    hostname = "app.terraform.io"

    workspaces {
      prefix = "MyService-"
    }
  }
}