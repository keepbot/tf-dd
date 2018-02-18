variable "region"                 { }
variable "aws_access_key"         { }
variable "aws_secret_key"         { }

terraform {
  backend "s3" {
    bucket = "doubledots-terraform-remote-state-storage"
    key    = "production.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  access_key  = "${var.aws_access_key}"
  secret_key  = "${var.aws_secret_key}"
  region      = "${var.region}"
  max_retries = "11"
}
