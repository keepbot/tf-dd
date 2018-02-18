variable "region"                 { }

terraform {
  backend "s3" {
    bucket = "doubledots-terraform-remote-state-storage"
    key    = "production.tfstate"
    region = "eu-central-1"
  }
}
