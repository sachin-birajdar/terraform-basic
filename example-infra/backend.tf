terraform {
  backend "s3" {
    bucket = "b50-tf-remote-state-bucket"
    key    = "example_infra/terraform.tfstate"
    region = "us-east-1"
  }
}