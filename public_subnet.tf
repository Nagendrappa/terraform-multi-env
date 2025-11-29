resource "aws_subnet" "dpt5_public_subnet" {
  vpc_id            = aws_vpc.dpt5_vpc.id
  cidr_block        = var.public_subnet_cidr
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_name
  }
}