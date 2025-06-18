terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-pam"
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    encrypt        = true
  }
}
