provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_providers {
    aws = "3.16.0"
  }
  backend "remote" {
    organization = "jeremietharaud"

    workspaces {
      name = "tfc-demo-dev"
    }
  }
}