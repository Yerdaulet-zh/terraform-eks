resource "aws_internet_gateway" "development_igw" {
  vpc_id = aws_vpc.development_vpc.id

  tags = {
    Name = "${local.vpc_name}-igw"
  }
}
