variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "vpc_name" {
  type = string
  default = "my-own-vpc"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/24"
}

variable "additional_tags" {
  type = map(string)
  default = {}
}

variable "vpc_id" {
  type = string
  default = ""
}

variable "subnet_cidr" {
  type = string
  default = ""
}

variable "private_subnets" {
  type = map(string)
  default = {
    "pv_sn_1" = 1
    "pv_sn_2" = 2
    "pv_sn_3" = 3
  }
}

variable "public_subnets" {
  type = map(string)
  default = {
    "pb_sn_1" = 1
    "pb_sn_2" = 2
    "pb_sn_3" = 3
  }
}