terraform {
  required_version = "1.8.0"
  required_providers {
    aws = {
      version = "5.42.0"
      source  = "hashicorp/aws"
    }
    vault = {
      version = "4.1.0"
      source  = "hashicorp/vault"
    }
  }
}
