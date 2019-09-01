terraform {
  required_version = "~> 0.12"

  backend "s3" {
    region = "ap-northeast-1"
    bucket = "infra.wintus.tokyo"
    key    = "liquid-devcamp/dev.tfstate"

    dynamodb_table = "terraform-state-lock"
  }
}

provider "aws" {
  version = "~> 2.0"
  region  = "ap-northeast-1"

  allowed_account_ids = ["344384897107"]
}

module "main" {
  source = "../"
}
