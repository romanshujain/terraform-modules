resource "aws_key_pair" "key-pair" {
  key_name = "terraform_key_name"
  public_key = file(var.path_to_public_key)
}