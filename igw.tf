resource "aws_internet_gateway" "dpt5_igw" {
  vpc_id = aws_vpc.dpt5_vpc.id
  tags = {
    Name = var.igw_name
  } 
}