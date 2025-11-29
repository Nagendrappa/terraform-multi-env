resource "aws_nat_gateway" "dpt5_nat_gateway" {
  allocation_id = aws_eip.dpt5_eip.id
  subnet_id     = aws_subnet.dpt5_public_subnet.id

  tags = {
    Name = var.nat_gateway_name
  }
}
