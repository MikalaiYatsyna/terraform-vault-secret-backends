terraform {
  required_version = "1.7.5"
  required_providers {
    aws = {
      version = "5.42.0"
      source  = "hashicorp/aws"
    }
    vault = {
      version = "4.2.0"
      source  = "hashicorp/vault"
    }
  }
}
