variable "vpc_cidr" {
  default = "10.20.0.0/16"
}

variable "tenancy" {
  default = "default"
}

variable "subnet1_cidr" {
  default = "10.20.0.0/18"
}

variable "subnet2_cidr" {
  default = "10.20.64.0/18"
}

variable "subnet3_cidr" {
  default = "10.20.128.0/18"
}

variable "subnet4_cidr" {
  default = "10.20.192.0/18"
}

variable "map_public_ip_for_public_subnet" {
  default = true
}

variable "map_public_ip_for_private_subnet" {
  default = false
}

variable "eip_is_in_vpc" {
  default = true
}