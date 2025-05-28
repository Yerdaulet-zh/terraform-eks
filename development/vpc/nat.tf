# resource "aws_eip" "nat_eip" {
#     domain = "vpc"
#     tags = {
#         Name = "${local.vpc_name}-nat-eip"
#     }
# }

# resource "aws_nat_gateway" "nat_gateway" {
#     allocation_id = aws_eip.nat_eip.id
#     subnet_id     = aws_subnet.public_a.id
#     tags = {
#         Name = "${local.vpc_name}-nat-gateway"
#     }
# }

