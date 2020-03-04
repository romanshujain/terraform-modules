variable "aws-ami" {
  type = map(string)
  default = {
    ap-south-1 = "ami-0620d12a9cf777c87"
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

variable "aws-region" {
  default = "ap-south-1"
}

variable "instance-type" {
  default = "t2.micro"
}