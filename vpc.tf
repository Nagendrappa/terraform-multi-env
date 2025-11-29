resource "aws_vpc" "dpt5_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.vpc_name
  }  
}