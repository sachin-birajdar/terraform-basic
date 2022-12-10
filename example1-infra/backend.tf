terraform {
  backend "s3" {
    bucket = "b50-tf-remote-state-bucket"
    key    = "example1/terraform.tfstate"
    region = "us-east-1"
  }
}