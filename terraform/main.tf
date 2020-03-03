provider "aws" {
    region = "eu-central-1"
}

#In real use case we should configure S3 backend for Your terraform.tfstate file in examle like that (just S3 backend):
#terraform {
#    backend "s3" {
#        key = "stage/data-stores/mysql/terraform.tfstate"
#        bucket = "my-awesome-bucket-terraform-state"
#        region = "eu-central-1"
#        encrypt = true
#   }
#}