resource "aws_vpc" "development_vpc" {
    cidr_block           = local.vpc_cidr
    enable_dns_support   = true
    enable_dns_hostnames = true
    tags = {
        Name = "${local.vpc_name}"
    }
}
