locals {
    env                  = "development"
    eks_cluster_name     = "${local.env}-terraform-eks-cluster"
    eks_region           = "us-east-1"
    eks_version          = "1.30"
}

