output "vpc_id" {
  value = aws_vpc.main-vpc.id
}

output "subnet_id" {
  value = aws_subnet.public_subnet1.id
}

output "vpc_cidr_block" {
  value = aws_vpc.main-vpc.cidr_block
}