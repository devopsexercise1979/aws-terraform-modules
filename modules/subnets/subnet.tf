variable vpc_id {}
variable public_rt_id {}
variable private_rt_id {}

resource "aws_subnet" "Public_subnet" {
  vpc_id = var.vpc_id
  cidr_block = var.Subnet-Public-CIDR
  tags = {
        Name = "Public Subnet"
  }
 
}


resource "aws_route_table_association" "PublicRouteTable" {
    subnet_id = aws_subnet.Public_subnet.id
    route_table_id = var.public_rt_id
}


resource "aws_subnet" "Private_subnet" {
  vpc_id = var.vpc_id
  cidr_block = var.Subnet-Private-CIDR
  tags = {
        Name = "Private Subnet"
  }
}

resource "aws_route_table_association" "PrivateRouteTable" {
    subnet_id = aws_subnet.Private_subnet.id
    route_table_id = var.private_rt_id

}

