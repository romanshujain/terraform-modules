module "vpc-creation" {
  source = "../../Module/VPC"
}

module "securitygroup-creation" {
  source = "../../Module/SecurityGroup"
  vpc_id1 = module.vpc-creation.vpc_id
  SG_cidr = module.vpc-creation.vpc_cidr_block
}

module "keypair-creation" {
  source = "../../Module/KeyPair"
  path_to_public_key = "ssh-public-key.pub"
}

resource "aws_instance" "EC2-instance" {
  ami = var.aws-ami[var.aws-region]
  instance_type = var.instance-type
  key_name = module.keypair-creation.keyvaluepair
  vpc_security_group_ids = [module.securitygroup-creation.securitygroupid]
  subnet_id = module.vpc-creation.subnet_id
}
