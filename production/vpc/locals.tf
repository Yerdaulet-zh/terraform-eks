locals {
    env         = "production"
    
    region      = "us-east-1"
    azs         = ["us-east-1a", "us-east-1b"]

    eks_name    = "${local.env}-terraform-eks"
    eks_version = "1.29"
    vpc_name    = "${local.env}-terraform-eks-vpc"
    vpc_cidr    = "10.0.0.0/16"
}
