resource "aws_vpc" "main-vpc" {
  cidr_block = var.vpc_cidr
  instance_tenancy = var.tenancy
  tags =  {
    Name = "terraform-vpc"
  }
}

resource "aws_subnet" "public_subnet1" {
  cidr_block = var.subnet1_cidr
  vpc_id = "${aws_vpc.main-vpc.id}"
  map_public_ip_on_launch = var.map_public_ip_for_public_subnet
  tags = {
    Name = "public_subnet"
  }

}

resource "aws_subnet" "private_subnet1" {
  cidr_block = var.subnet2_cidr
  vpc_id = "${aws_vpc.main-vpc.id}"
  map_public_ip_on_launch = var.map_public_ip_for_private_subnet
  tags =  {
    Name = "private_subnet1"
  }
}

resource "aws_subnet" "private_subnet2" {
  cidr_block = var.subnet3_cidr
  vpc_id = "${aws_vpc.main-vpc.id}"
  map_public_ip_on_launch = var.map_public_ip_for_private_subnet
  tags =  {
    Name = "private_subnet2"
  }
}

resource "aws_subnet" "private_subnet3" {
  cidr_block = var.subnet4_cidr
  vpc_id = "${aws_vpc.main-vpc.id}"
  map_public_ip_on_launch = var.map_public_ip_for_private_subnet
  tags =  {
    Name = "private_subnet3"
  }
}

resource "aws_internet_gateway" "AWS-IGW" {
  vpc_id = "${aws_vpc.main-vpc.id}"
}


resource "aws_route_table" "AWS-RT" {
  vpc_id = "${aws_vpc.main-vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.AWS-IGW.id
  }
}

resource "aws_route_table_association" "AWS-RTA" {
  route_table_id = aws_route_table.AWS-RT.id
  subnet_id = aws_subnet.public_subnet1.id
}

