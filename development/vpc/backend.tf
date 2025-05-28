terraform {
    backend "s3" {
        bucket         = "terraform-state-pet-project-eks"
        key            = "development/vpc/terraform.tfstate"
        region         = "us-east-1"
        dynamodb_table = "terraform-state-lock-pet-project-eks"
        encrypt        = true
    }
}
