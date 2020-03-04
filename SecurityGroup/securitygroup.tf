
resource "aws_security_group" "SG-group" {
  name = "SG-group-terraform"
  vpc_id = var.vpc_id1

  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = [var.SG_cidr]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["125.17.119.210/32"]
  }

}
