terraform {
  required_version = "1.7.5"
  required_providers {
    aws = {
      version = "4.67.0"
      source  = "hashicorp/aws"
    }
    vault = {
      version = "4.0.0"
      source  = "hashicorp/vault"
    }
  }
}
