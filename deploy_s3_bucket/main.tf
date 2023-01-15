provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl

 }


 # video link that I followed: https://www.coachdevops.com/2021/07/terraform-create-s3-bucket-example-how_12.html