resource "aws_subnet" "public_a" {
    vpc_id                          = aws_vpc.production_vpc.id
    cidr_block                      = "10.0.1.0/24"
    availability_zone               = local.azs[0]
    map_public_ip_on_launch         = true

    tags = {
        "Name"                                                 = "${local.vpc_name}-public-subnet-${local.azs[0]}"
        "kubernetes.io/role/elb"                               = "1"
        "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
    }
}

resource "aws_subnet" "public_b" {
    vpc_id                  = aws_vpc.production_vpc.id
    cidr_block              = "10.0.2.0/24"
    availability_zone       = local.azs[1]
    map_public_ip_on_launch = true

    tags = {
        "Name"                                                 = "${local.vpc_name}-public-subnet-${local.azs[1]}"
        "kubernetes.io/role/elb"                               = "1"
        "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
    }
}

resource "aws_subnet" "private_a" {
    vpc_id                  = aws_vpc.production_vpc.id
    cidr_block              = "10.0.3.0/24"
    availability_zone       = local.azs[0]
    map_public_ip_on_launch = false

    tags = {
        "Name"                                                 = "${local.vpc_name}-private-subnet-${local.azs[0]}"
        "kubernetes.io/role/internal-elb"                      = "1"
        "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
    }
}

resource "aws_subnet" "private_b" {
    vpc_id                  = aws_vpc.production_vpc.id
    cidr_block              = "10.0.4.0/24"
    availability_zone       = local.azs[1]
    map_public_ip_on_launch = false

    tags = {
        "Name"                                                 = "${local.vpc_name}-private-subnet-${local.azs[1]}"
        "kubernetes.io/role/internal-elb"                      = "1"
        "kubernetes.io/cluster/${local.env}-${local.eks_name}" = "owned"
    }
}

