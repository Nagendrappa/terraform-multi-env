resource "aws_subnet" "dpt5_private_subnet" {
  vpc_id            = aws_vpc.dpt5_vpc.id
  cidr_block        = var.private_subnet_cidr
  map_public_ip_on_launch = false

  tags = {
    Name = var.private_subnet_name
  }
}