# resource "aws_eip" "eip_nat-gateway" {
#   vpc = var.eip_is_in_vpc
# }

# resource "aws_nat_gateway" "aws_nat_gateway" {
#   allocation_id = aws_eip.eip_nat-gateway.id
#   subnet_id = aws_subnet.public_subnet1.id
#   depends_on = [aws_internet_gateway.AWS-IGW]

#   tags = {
#     Name = "nat gateway terraform"
#   }
# }

# resource "aws_route_table" "aws-route" {
#   vpc_id = "${aws_vpc.main-vpc.id}"
#   route {
#     cidr_block = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.aws_nat_gateway.id
#   }

#   tags = {
#     Name = "nat gateway RT terraform"
#   }
# }

# resource "aws_route_table_association" "aws-route-association_private1" {
#   route_table_id = "${aws_route_table.aws-route.id}"
#   subnet_id = aws_subnet.private_subnet1.id
# }

# resource "aws_route_table_association" "aws-route-association_private2" {
#   route_table_id = "${aws_route_table.aws-route.id}"
#   subnet_id = aws_subnet.private_subnet2.id
# }

# resource "aws_route_table_association" "aws-route-association_private3" {
#   route_table_id = "${aws_route_table.aws-route.id}"
#   subnet_id = aws_subnet.private_subnet3.id
# }

