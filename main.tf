terraform {
  required_version = "~> 0.12"
}

provider "aws" {
  region = "ap-northeast-1"
}

data "aws_availability_zones" "az" {}
