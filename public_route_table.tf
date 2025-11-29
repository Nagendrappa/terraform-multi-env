resource "aws_route_table" "dpt5_public_route_table" {
  vpc_id = aws_vpc.dpt5_vpc.id
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dpt5_igw.id   
  }
  tags = {
    Name = var.public_route_table_name
  }
}

