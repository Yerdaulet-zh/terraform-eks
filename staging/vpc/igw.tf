resource "aws_internet_gateway" "staging_igw" {
  vpc_id = aws_vpc.staging_vpc.id

  tags = {
    Name = "${local.vpc_name}-igw"
  }
}
