output "region" {
  value = var.region
}

output "vpc_id" {
  value = aws_vpc.dpt5_vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.dpt5_vpc.cidr_block
}

output "igw_id" {
  value = aws_internet_gateway.dpt5_igw.id
}

output "public_subnet_id" {
  value = aws_subnet.dpt5_public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.dpt5_private_subnet.id
}

output "public_route_table_id" {
  value = aws_route_table.dpt5_public_route_table.id
}

output "eip_allocation_id" {
  value = aws_eip.dpt5_eip.id
}
output "nat_gateway_id" {
  value = aws_nat_gateway.dpt5_nat_gateway.id
}

output "private_route_table_id" {
  value = aws_route_table.dpt5_private_route_table.id
}

output "public_route_table_association_id" {
  value = aws_route_table_association.dpt5_public_route_table_association.id
}

output "private_route_table_association_id" {
  value = aws_route_table_association.dpt5_private_route_table_association.id
}

