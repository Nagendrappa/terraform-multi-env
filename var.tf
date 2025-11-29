variable "region" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "vpc_name" {
  type = string
}

#IGW 
variable "igw_name" {
  type = string
}

#Public Subnet
variable "public_subnet_cidr" {
  type    = string
  default = "PLEASE_SET_A_VALUE"
}

variable "public_subnet_name" {
  type = string
  default = "please_set_a_name_for_public_subnet"

}

#Private Subnet
variable "private_subnet_cidr" {
  type    = string
  default = "PLEASE_SET_A_VALUE"
}
variable "private_subnet_name" {
  type = string
  default = "please_set_a_name_for_private_subnet"
}

#Public Route Table
variable "public_route_table_name" {
  type = string
  default = "please_set_a_name_for_public_route_table"
}

#EIP
variable "eip_name" {
  type = string
  default = "please_set_a_name_for_eip"
}

variable "nat_gateway_name" {
  type = string
  default = "please_set_a_name_for_nat_gateway" 
}

variable "private_route_table_name" {
  type = string
  default = "please_set_a_name_for_private_route_table"
}

variable "public_route_table_association_name" {
  type = string
  default = "please_set_a_name_for_public_route_table_association"
}

variable "private_route_table_association_name" {
  type = string
  default = "please_set_a_name_for_private_route_table_association"
}