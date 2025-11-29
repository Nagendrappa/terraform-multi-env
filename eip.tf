resource "aws_eip" "dpt5_eip" {
  tags = {
    Name = var.eip_name
  }
}