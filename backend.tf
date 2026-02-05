terraform {
  backend "s3" {
    bucket = "sundhar-terraform-state-4821"
    key    = "terraform-ci-cd/terraform.tfstate"
    region = "ap-south-1"
  }
}
