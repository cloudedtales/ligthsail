provider "aws" {
    region = "eu-central-1"
}

#In real use case we should configure S3 backend for Your cluster.tfstate file in examle like that (just S3 backend):
#cluster {
#    backend "s3" {
#        key = "stage/data-stores/mysql/cluster.tfstate"
#        bucket = "my-awesome-bucket-cluster-state"
#        region = "eu-central-1"
#        encrypt = true
#   }
#}