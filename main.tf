terraform {
    required_providers {
        aws ={
            source ="hashicorp/aws"
            version = "~> 3.0"
        }
    }
    backend "s3" {
        bucket="terraform-state-2021"
        key="terraform.tfstate"
        region="us-east-1"
        acl="bucket-owner-full-control"
    }
}