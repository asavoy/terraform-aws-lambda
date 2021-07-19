terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
  required_version = ">=1"
}

provider "aws" {
  region = "eu-west-1"
}

module "nested1" {
  source = "nested1"
}

module "nested2" {
  source = "nested2"
}
