resource "aws_route_table" "dpt5_private_route_table" {
  vpc_id = aws_vpc.dpt5_vpc.id
  route  {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.dpt5_nat_gateway.id  
  }
  tags = {
    Name = var.private_route_table_name
  }
}