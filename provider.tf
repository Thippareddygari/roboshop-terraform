provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "http://vault-internal.kommanuthala.store:8200"
  token = var.vault_token
}