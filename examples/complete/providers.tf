provider "aws" {
  region  = us-west-2
  version = "2.70.0"
}

terraform {
  backend "s3" {
  }
}
