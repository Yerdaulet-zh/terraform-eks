resource "aws_route_table" "terraform_eks_production_public_route_table" {
    vpc_id = aws_vpc.production_vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.production_igw.id
    }
    tags = {
        Name = "${local.vpc_name}-route-table"
    }
}

resource "aws_route_table_association" "public_a" {
    subnet_id      = aws_subnet.public_a.id
    route_table_id = aws_route_table.terraform_eks_production_public_route_table.id
}

resource "aws_route_table_association" "public_b" {
    subnet_id      = aws_subnet.public_b.id
    route_table_id = aws_route_table.terraform_eks_production_public_route_table.id
}

# NAT Gateway Route Table
# resource "aws_route_table" "terraform_eks_production_nat_route_table" {
#     vpc_id = aws_vpc.production_vpc.id
#     route {
#         cidr_block     = "0.0.0.0/0"
#         nat_gateway_id = aws_nat_gateway.nat_gateway.id
#     }
#     tags = {
#         Name = "${local.vpc_name}-private-a-route-table"
#     }
# }

# resource "aws_route_table_association" "private_a" {
#     subnet_id      = aws_subnet.private_a.id
#     route_table_id = aws_route_table.terraform_eks_production_nat_route_table.id
# }

# resource "aws_route_table_association" "private_b" {
#     subnet_id      = aws_subnet.private_b.id
#     route_table_id = aws_route_table.terraform_eks_production_nat_route_table.id
# }

