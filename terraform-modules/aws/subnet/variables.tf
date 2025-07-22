variable "vpc_id" {
  type = string
  default = ""
}

variable "subnet_cidr" {
  type = string
  default = ""
}

variable "additional_tags" {
  type = map(string)
  default = {}
}